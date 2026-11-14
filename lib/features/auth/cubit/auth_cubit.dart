import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vetcare/core/services/api_result.dart';
import 'package:vetcare/features/auth/cubit/auth_state.dart';
import 'package:vetcare/features/auth/services/auth_services.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthServices _authServices;
  AuthCubit(this._authServices) : super(const AuthState.initial());

  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String fullName,
    required String phoneNumber,
  }) async {
    emit(const AuthState.signUpLoading());
    final response = await _authServices.signUpWithEmailAndPassword(
      email: email,
      password: password,
      fullName: fullName,
      phoneNumber: phoneNumber,
    );
    response.when(
      success: (authResponse) async {
        final userId = authResponse.user?.id;
        if (userId != null) {
          final setUserDataResponse = await _authServices.setUserData(
            userId: userId,
            fullName: fullName,
            email: email,
            phoneNumber: phoneNumber,
          );
          setUserDataResponse.when(
            success: (_) => emit(const AuthState.signUpSuccess()),
            failure: (error) => emit(AuthState.signUpFailure(error.message)),
          );
        } else {
          emit(const AuthState.signUpFailure('User ID is null after sign-up.'));
        }
      },
      failure: (error) => emit(AuthState.signUpFailure(error.message)),
    );
  }

  // Future<void> signUpWithEmailAndPassword( {
  //   required String email,
  //   required String password,
  //   required String fullName,
  //   required String phoneNumber,}) async {
  //   emit(AuthLoading());
  //   try {
  //     await _authServices.signUpWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //       fullName: fullName,
  //       phoneNumber: phoneNumber,
  //     );
  //     await _authServices.setUserData(
  //       userId: _authServices.isSignedIn()!.id,
  //       fullName: fullName,
  //       email: email,
  //       phoneNumber: phoneNumber,
  //     );
  //     emit(AuthSuccess());
  //   } catch (e) {
  //     emit(AuthFailure(e.toString()));
  //   }
  // }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    emit(AuthState.loginLoading());
    final response = await _authServices.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    response.when(
      success: (signInResponse) {
        emit(AuthState.loginsuccess());
      },
      failure: (error) => emit(AuthState.loginFailure(error.message)),
    );
  }

  // Future<void> signInWithEmailAndPassword(String email, String password) async {
  //   emit(AuthLoading());
  //   try {
  //     await _authServices.signInWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );
  //     emit(AuthSuccess());
  //   } catch (e) {
  //     emit(AuthFailure(e.toString()));
  //   }
  // }

  Future<void> signOut() async {
    emit(AuthState.signOutLoading());
    final response = await _authServices.signOut();
    response.when(
      success: (signOutResponse) {
        emit(AuthState.signOutSuccess());
      },
      failure: (error) => emit(AuthState.signOutFailure(error.message)),
    );
  }

  // Future<void> signOut() async {
  //   emit(SignOutLoading());
  //   try {
  //     await _authServices.signOut();
  //     emit(SignOutSuccess());
  //   } catch (e) {
  //     emit(SignOutFailure(e.toString()));
  //   }
  // }

  void checkAuth() {
    final isSigned = _authServices.isSignedIn();
    if (isSigned != null) {
      emit(AuthState.loginsuccess());
    }
  }
}
