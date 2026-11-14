import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vetcare/core/services/api_result.dart';
import 'package:vetcare/core/services/supabase_database_services.dart';
import 'package:vetcare/core/services/supabase_error_handler.dart';
import 'package:vetcare/features/auth/models/user_data.dart';


abstract class AuthServices {
  Future<ApiResult<AuthResponse>> signInWithEmailAndPassword({required String email, required String password});
  Future<ApiResult<AuthResponse>> signUpWithEmailAndPassword(
    {required String email,
    required String password,
    required String fullName,
    required String phoneNumber,}
  );
  Future<ApiResult<void>> setUserData(
    {required String userId,
    required String fullName,
    required String email,
    required String phoneNumber,}
  );
  Future<ApiResult<void>> signOut();
  User? isSignedIn();
}

class AuthServicesImpl implements AuthServices {
   final SupabaseClient _supabase;
  final SupabaseDatabaseServices supabaseDatabaseServices;

  AuthServicesImpl({
    required SupabaseClient supabaseClient,
    required this.supabaseDatabaseServices,
  }) : _supabase = supabaseClient;


  @override
  Future<ApiResult<AuthResponse>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _supabase.auth.signInWithPassword(
        email: email.trim(),
        password: password,
      );

      if (response.user == null || response.session == null) {
        return ApiResult.failure(
          AppFailure(
            message: 'Unable to sign in. Please try again.',
            code: 'missing_session',
            cause: StateError('Sign-in returned no user or session.'),
          ),
        );
      }

      return ApiResult.success(response);
    } catch (error, stackTrace) {
      return ApiResult.failure(
        SupabaseErrorHandler.handle(error, stackTrace),
      );
    }
  }

  @override
  Future<ApiResult<AuthResponse>> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String fullName,
    required String phoneNumber,
  }) async {
    try {
      final response = await _supabase.auth.signUp(
        email: email.trim(),
        password: password,
        data: {
          'full_name': fullName.trim(),
          'phone': phoneNumber.trim(),
        },
      );

      if (response.user == null) {
        return ApiResult.failure(
          AppFailure(
            message: 'Unable to complete registration. Please try again.',
            code: 'missing_user',
            cause: StateError('Sign-up returned no user.'),
          ),
        );
      }

      // A null session is expected when email confirmation is required.
      return ApiResult.success(response);
    } catch (error, stackTrace) {
      return ApiResult.failure(
        SupabaseErrorHandler.handle(error, stackTrace),
      );
    }
  }

  @override
  Future<ApiResult<void>> signOut() async {
    try {
      await _supabase.auth.signOut();
      return const ApiResult<void>.success(null);
    } catch (error, stackTrace) {
      return ApiResult.failure(
        SupabaseErrorHandler.handle(error, stackTrace),
      );
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
  Future<ApiResult<void>> setUserData(
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
      return const ApiResult<void>.success(null);
    } catch (error, stackTrace) {
      return ApiResult.failure(
        SupabaseErrorHandler.handle(error, stackTrace),
      );
    }

  }
}
