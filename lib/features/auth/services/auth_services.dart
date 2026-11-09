import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vetcare/core/services/supabase_database_services.dart';
import 'package:vetcare/features/auth/models/user_data.dart';

abstract class AuthServices {
  Future<void> signInWithEmailAndPassword({required String email, required String password});
  Future<void> signUpWithEmailAndPassword(
    {required String email,
    required String password,
    required String fullName,
    required String phoneNumber,}
  );
  Future<void> setUserData(
    {required String userId,
    required String fullName,
    required String email,
    required String phoneNumber,}
  );
  Future<void> signOut();
  User? isSignedIn();
}

class AuthServicesImpl implements AuthServices {
  final _supabase = Supabase.instance.client;
  final SupabaseDatabaseServices supabaseDatabaseServices =
      SupabaseDatabaseServices.instance;

  @override
  Future<void> signInWithEmailAndPassword(
  {required String email, required String password}
  ) async {
    try {
     final response = await _supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );
      if (response.user == null) {
        throw Exception('Sign in failed');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> signUpWithEmailAndPassword( {
    required String email,
    required String password,
    required String fullName,
    required String phoneNumber,}) async {
    try {
       final response = await _supabase.auth.signUp(
        email: email,
        password: password,
      );
      if (response.user == null) {
        throw Exception('Sign up failed');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _supabase.auth.signOut();
    } catch (e) {
      rethrow;
    }
  }

  @override
  User? isSignedIn() {
    try {
      final user = _supabase.auth.currentUser;
    if (user == null) return null;
    return user;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> setUserData(
    {required String userId,
    required String fullName,
    required String email,
    required String phoneNumber,}
  ) async {
    try {
      final userData = UserData(id: userId, fullName: fullName, email: email);
      await supabaseDatabaseServices.insertRow(
        table: 'users',
        values: userData.toMap(),
      );
    } catch (e) {
      rethrow;
    }
  }
}
