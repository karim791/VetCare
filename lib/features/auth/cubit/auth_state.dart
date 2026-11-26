import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vetcare/core/services/supabase_error_handler/supabase_error_handler.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _AuthInitial;
  ///Login States
  const factory AuthState.loginLoading() = LoginLoading;
  const factory AuthState.loginsuccess() = LoginSuccess;
  const factory AuthState.loginFailure(SupabaseErrorHandler error) = LoginFailure;
  ///SignUp States
  const factory AuthState.signUpLoading() = SignUpLoading;
  const factory AuthState.signUpSuccess() = SignUpSuccess;
  const factory AuthState.signUpFailure(SupabaseErrorHandler error) = SignUpFailure;
  ///SignOut States
  const factory AuthState.signOutLoading() = SignOutLoading;
  const factory AuthState.signOutSuccess() = SignOutSuccess;
  const factory AuthState.signOutFailure(SupabaseErrorHandler error) = SignOutFailure;
}