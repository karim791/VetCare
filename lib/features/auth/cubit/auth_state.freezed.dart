// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AuthInitial value)?  initial,TResult Function( LoginLoading value)?  loginLoading,TResult Function( LoginSuccess value)?  loginsuccess,TResult Function( LoginFailure value)?  loginFailure,TResult Function( SignUpLoading value)?  signUpLoading,TResult Function( SignUpSuccess value)?  signUpSuccess,TResult Function( SignUpFailure value)?  signUpFailure,TResult Function( SignOutLoading value)?  signOutLoading,TResult Function( SignOutSuccess value)?  signOutSuccess,TResult Function( SignOutFailure value)?  signOutFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthInitial() when initial != null:
return initial(_that);case LoginLoading() when loginLoading != null:
return loginLoading(_that);case LoginSuccess() when loginsuccess != null:
return loginsuccess(_that);case LoginFailure() when loginFailure != null:
return loginFailure(_that);case SignUpLoading() when signUpLoading != null:
return signUpLoading(_that);case SignUpSuccess() when signUpSuccess != null:
return signUpSuccess(_that);case SignUpFailure() when signUpFailure != null:
return signUpFailure(_that);case SignOutLoading() when signOutLoading != null:
return signOutLoading(_that);case SignOutSuccess() when signOutSuccess != null:
return signOutSuccess(_that);case SignOutFailure() when signOutFailure != null:
return signOutFailure(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AuthInitial value)  initial,required TResult Function( LoginLoading value)  loginLoading,required TResult Function( LoginSuccess value)  loginsuccess,required TResult Function( LoginFailure value)  loginFailure,required TResult Function( SignUpLoading value)  signUpLoading,required TResult Function( SignUpSuccess value)  signUpSuccess,required TResult Function( SignUpFailure value)  signUpFailure,required TResult Function( SignOutLoading value)  signOutLoading,required TResult Function( SignOutSuccess value)  signOutSuccess,required TResult Function( SignOutFailure value)  signOutFailure,}){
final _that = this;
switch (_that) {
case _AuthInitial():
return initial(_that);case LoginLoading():
return loginLoading(_that);case LoginSuccess():
return loginsuccess(_that);case LoginFailure():
return loginFailure(_that);case SignUpLoading():
return signUpLoading(_that);case SignUpSuccess():
return signUpSuccess(_that);case SignUpFailure():
return signUpFailure(_that);case SignOutLoading():
return signOutLoading(_that);case SignOutSuccess():
return signOutSuccess(_that);case SignOutFailure():
return signOutFailure(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AuthInitial value)?  initial,TResult? Function( LoginLoading value)?  loginLoading,TResult? Function( LoginSuccess value)?  loginsuccess,TResult? Function( LoginFailure value)?  loginFailure,TResult? Function( SignUpLoading value)?  signUpLoading,TResult? Function( SignUpSuccess value)?  signUpSuccess,TResult? Function( SignUpFailure value)?  signUpFailure,TResult? Function( SignOutLoading value)?  signOutLoading,TResult? Function( SignOutSuccess value)?  signOutSuccess,TResult? Function( SignOutFailure value)?  signOutFailure,}){
final _that = this;
switch (_that) {
case _AuthInitial() when initial != null:
return initial(_that);case LoginLoading() when loginLoading != null:
return loginLoading(_that);case LoginSuccess() when loginsuccess != null:
return loginsuccess(_that);case LoginFailure() when loginFailure != null:
return loginFailure(_that);case SignUpLoading() when signUpLoading != null:
return signUpLoading(_that);case SignUpSuccess() when signUpSuccess != null:
return signUpSuccess(_that);case SignUpFailure() when signUpFailure != null:
return signUpFailure(_that);case SignOutLoading() when signOutLoading != null:
return signOutLoading(_that);case SignOutSuccess() when signOutSuccess != null:
return signOutSuccess(_that);case SignOutFailure() when signOutFailure != null:
return signOutFailure(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loginLoading,TResult Function()?  loginsuccess,TResult Function( String message)?  loginFailure,TResult Function()?  signUpLoading,TResult Function()?  signUpSuccess,TResult Function( String message)?  signUpFailure,TResult Function()?  signOutLoading,TResult Function()?  signOutSuccess,TResult Function( String message)?  signOutFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthInitial() when initial != null:
return initial();case LoginLoading() when loginLoading != null:
return loginLoading();case LoginSuccess() when loginsuccess != null:
return loginsuccess();case LoginFailure() when loginFailure != null:
return loginFailure(_that.message);case SignUpLoading() when signUpLoading != null:
return signUpLoading();case SignUpSuccess() when signUpSuccess != null:
return signUpSuccess();case SignUpFailure() when signUpFailure != null:
return signUpFailure(_that.message);case SignOutLoading() when signOutLoading != null:
return signOutLoading();case SignOutSuccess() when signOutSuccess != null:
return signOutSuccess();case SignOutFailure() when signOutFailure != null:
return signOutFailure(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loginLoading,required TResult Function()  loginsuccess,required TResult Function( String message)  loginFailure,required TResult Function()  signUpLoading,required TResult Function()  signUpSuccess,required TResult Function( String message)  signUpFailure,required TResult Function()  signOutLoading,required TResult Function()  signOutSuccess,required TResult Function( String message)  signOutFailure,}) {final _that = this;
switch (_that) {
case _AuthInitial():
return initial();case LoginLoading():
return loginLoading();case LoginSuccess():
return loginsuccess();case LoginFailure():
return loginFailure(_that.message);case SignUpLoading():
return signUpLoading();case SignUpSuccess():
return signUpSuccess();case SignUpFailure():
return signUpFailure(_that.message);case SignOutLoading():
return signOutLoading();case SignOutSuccess():
return signOutSuccess();case SignOutFailure():
return signOutFailure(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loginLoading,TResult? Function()?  loginsuccess,TResult? Function( String message)?  loginFailure,TResult? Function()?  signUpLoading,TResult? Function()?  signUpSuccess,TResult? Function( String message)?  signUpFailure,TResult? Function()?  signOutLoading,TResult? Function()?  signOutSuccess,TResult? Function( String message)?  signOutFailure,}) {final _that = this;
switch (_that) {
case _AuthInitial() when initial != null:
return initial();case LoginLoading() when loginLoading != null:
return loginLoading();case LoginSuccess() when loginsuccess != null:
return loginsuccess();case LoginFailure() when loginFailure != null:
return loginFailure(_that.message);case SignUpLoading() when signUpLoading != null:
return signUpLoading();case SignUpSuccess() when signUpSuccess != null:
return signUpSuccess();case SignUpFailure() when signUpFailure != null:
return signUpFailure(_that.message);case SignOutLoading() when signOutLoading != null:
return signOutLoading();case SignOutSuccess() when signOutSuccess != null:
return signOutSuccess();case SignOutFailure() when signOutFailure != null:
return signOutFailure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _AuthInitial implements AuthState {
  const _AuthInitial();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthState.initial()';
}


}




/// @nodoc


class LoginLoading implements AuthState {
  const LoginLoading();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthState.loginLoading()';
}


}




/// @nodoc


class LoginSuccess implements AuthState {
  const LoginSuccess();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthState.loginsuccess()';
}


}




/// @nodoc


class LoginFailure implements AuthState {
  const LoginFailure(this.message);
  

 final  String message;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginFailureCopyWith<LoginFailure> get copyWith => _$LoginFailureCopyWithImpl<LoginFailure>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,message);
}

@override
String toString() {
    return 'AuthState.loginFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $LoginFailureCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $LoginFailureCopyWith(LoginFailure value, $Res Function(LoginFailure) _then) = _$LoginFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$LoginFailureCopyWithImpl<$Res>
    implements $LoginFailureCopyWith<$Res> {
  _$LoginFailureCopyWithImpl(this._self, this._then);

  final LoginFailure _self;
  final $Res Function(LoginFailure) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(LoginFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SignUpLoading implements AuthState {
  const SignUpLoading();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthState.signUpLoading()';
}


}




/// @nodoc


class SignUpSuccess implements AuthState {
  const SignUpSuccess();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthState.signUpSuccess()';
}


}




/// @nodoc


class SignUpFailure implements AuthState {
  const SignUpFailure(this.message);
  

 final  String message;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpFailureCopyWith<SignUpFailure> get copyWith => _$SignUpFailureCopyWithImpl<SignUpFailure>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,message);
}

@override
String toString() {
    return 'AuthState.signUpFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $SignUpFailureCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $SignUpFailureCopyWith(SignUpFailure value, $Res Function(SignUpFailure) _then) = _$SignUpFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SignUpFailureCopyWithImpl<$Res>
    implements $SignUpFailureCopyWith<$Res> {
  _$SignUpFailureCopyWithImpl(this._self, this._then);

  final SignUpFailure _self;
  final $Res Function(SignUpFailure) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(SignUpFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SignOutLoading implements AuthState {
  const SignOutLoading();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SignOutLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthState.signOutLoading()';
}


}




/// @nodoc


class SignOutSuccess implements AuthState {
  const SignOutSuccess();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SignOutSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthState.signOutSuccess()';
}


}




/// @nodoc


class SignOutFailure implements AuthState {
  const SignOutFailure(this.message);
  

 final  String message;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignOutFailureCopyWith<SignOutFailure> get copyWith => _$SignOutFailureCopyWithImpl<SignOutFailure>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SignOutFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,message);
}

@override
String toString() {
    return 'AuthState.signOutFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $SignOutFailureCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $SignOutFailureCopyWith(SignOutFailure value, $Res Function(SignOutFailure) _then) = _$SignOutFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SignOutFailureCopyWithImpl<$Res>
    implements $SignOutFailureCopyWith<$Res> {
  _$SignOutFailureCopyWithImpl(this._self, this._then);

  final SignOutFailure _self;
  final $Res Function(SignOutFailure) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(SignOutFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
