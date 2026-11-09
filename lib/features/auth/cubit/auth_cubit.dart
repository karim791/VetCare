import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vetcare/features/auth/services/auth_services.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  final AuthServices _authServices = AuthServicesImpl();

  Future<void> signUpWithEmailAndPassword( {
    required String email,
    required String password,
    required String fullName,
    required String phoneNumber,}) async {
    emit(AuthLoading());
    try {
      await _authServices.signUpWithEmailAndPassword(
        email: email,
        password: password,    
        fullName: fullName,
        phoneNumber: phoneNumber,
      );
      await _authServices.setUserData(
        userId: _authServices.isSignedIn()!.id,
        fullName: fullName,
        email: email,
        phoneNumber: phoneNumber,
      );
      emit(AuthSuccess());
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    emit(AuthLoading());
    try {
      await _authServices.signInWithEmailAndPassword(email: email, password: password);
      emit(AuthSuccess());
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }


  Future<void> signOut() async {
    emit(SignOutLoading());
    try {
      await _authServices.signOut();
      emit(SignOutSuccess());
    } catch (e) {
      emit(SignOutFailure(e.toString()));
    }
  }

  void checkAuth()  {
    final isSigned = _authServices.isSignedIn();
    if (isSigned !=null) {
      emit(AuthSuccess());
    }
  }
}
