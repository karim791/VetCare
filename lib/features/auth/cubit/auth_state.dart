import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _AuthInitial;
  ///Login States
  const factory AuthState.loginLoading() = LoginLoading;
  const factory AuthState.loginsuccess() = LoginSuccess;
  const factory AuthState.loginFailure(String message) = LoginFailure;
  ///SignUp States
  const factory AuthState.signUpLoading() = SignUpLoading;
  const factory AuthState.signUpSuccess() = SignUpSuccess;
  const factory AuthState.signUpFailure(String message) = SignUpFailure;
  ///SignOut States
  const factory AuthState.signOutLoading() = SignOutLoading;
  const factory AuthState.signOutSuccess() = SignOutSuccess;
  const factory AuthState.signOutFailure(String message) = SignOutFailure;
}