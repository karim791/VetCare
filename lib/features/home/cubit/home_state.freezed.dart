// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( HomeLoading value)?  loading,TResult Function( PetLoaded value)?  petLoaded,TResult Function( PetLoadedFailure value)?  petLoadedFailure,TResult Function( ClinicsLoaded value)?  clinicsLoaded,TResult Function( ClinicsLoadedFailure value)?  clinicsLoadedFailure,TResult Function( AppointmentsLoaded value)?  appointmentsLoaded,TResult Function( AppointmentsLoadedFailure value)?  appointmentsLoadedFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case HomeLoading() when loading != null:
return loading(_that);case PetLoaded() when petLoaded != null:
return petLoaded(_that);case PetLoadedFailure() when petLoadedFailure != null:
return petLoadedFailure(_that);case ClinicsLoaded() when clinicsLoaded != null:
return clinicsLoaded(_that);case ClinicsLoadedFailure() when clinicsLoadedFailure != null:
return clinicsLoadedFailure(_that);case AppointmentsLoaded() when appointmentsLoaded != null:
return appointmentsLoaded(_that);case AppointmentsLoadedFailure() when appointmentsLoadedFailure != null:
return appointmentsLoadedFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( HomeLoading value)  loading,required TResult Function( PetLoaded value)  petLoaded,required TResult Function( PetLoadedFailure value)  petLoadedFailure,required TResult Function( ClinicsLoaded value)  clinicsLoaded,required TResult Function( ClinicsLoadedFailure value)  clinicsLoadedFailure,required TResult Function( AppointmentsLoaded value)  appointmentsLoaded,required TResult Function( AppointmentsLoadedFailure value)  appointmentsLoadedFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case HomeLoading():
return loading(_that);case PetLoaded():
return petLoaded(_that);case PetLoadedFailure():
return petLoadedFailure(_that);case ClinicsLoaded():
return clinicsLoaded(_that);case ClinicsLoadedFailure():
return clinicsLoadedFailure(_that);case AppointmentsLoaded():
return appointmentsLoaded(_that);case AppointmentsLoadedFailure():
return appointmentsLoadedFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( HomeLoading value)?  loading,TResult? Function( PetLoaded value)?  petLoaded,TResult? Function( PetLoadedFailure value)?  petLoadedFailure,TResult? Function( ClinicsLoaded value)?  clinicsLoaded,TResult? Function( ClinicsLoadedFailure value)?  clinicsLoadedFailure,TResult? Function( AppointmentsLoaded value)?  appointmentsLoaded,TResult? Function( AppointmentsLoadedFailure value)?  appointmentsLoadedFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case HomeLoading() when loading != null:
return loading(_that);case PetLoaded() when petLoaded != null:
return petLoaded(_that);case PetLoadedFailure() when petLoadedFailure != null:
return petLoadedFailure(_that);case ClinicsLoaded() when clinicsLoaded != null:
return clinicsLoaded(_that);case ClinicsLoadedFailure() when clinicsLoadedFailure != null:
return clinicsLoadedFailure(_that);case AppointmentsLoaded() when appointmentsLoaded != null:
return appointmentsLoaded(_that);case AppointmentsLoadedFailure() when appointmentsLoadedFailure != null:
return appointmentsLoadedFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<PetModel>? petList)?  petLoaded,TResult Function( SupabaseErrorHandler error)?  petLoadedFailure,TResult Function( List<ClinicModel>? clinicsList)?  clinicsLoaded,TResult Function( SupabaseErrorHandler error)?  clinicsLoadedFailure,TResult Function( List<AppointmentModel>? appointments)?  appointmentsLoaded,TResult Function( SupabaseErrorHandler error)?  appointmentsLoadedFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case HomeLoading() when loading != null:
return loading();case PetLoaded() when petLoaded != null:
return petLoaded(_that.petList);case PetLoadedFailure() when petLoadedFailure != null:
return petLoadedFailure(_that.error);case ClinicsLoaded() when clinicsLoaded != null:
return clinicsLoaded(_that.clinicsList);case ClinicsLoadedFailure() when clinicsLoadedFailure != null:
return clinicsLoadedFailure(_that.error);case AppointmentsLoaded() when appointmentsLoaded != null:
return appointmentsLoaded(_that.appointments);case AppointmentsLoadedFailure() when appointmentsLoadedFailure != null:
return appointmentsLoadedFailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<PetModel>? petList)  petLoaded,required TResult Function( SupabaseErrorHandler error)  petLoadedFailure,required TResult Function( List<ClinicModel>? clinicsList)  clinicsLoaded,required TResult Function( SupabaseErrorHandler error)  clinicsLoadedFailure,required TResult Function( List<AppointmentModel>? appointments)  appointmentsLoaded,required TResult Function( SupabaseErrorHandler error)  appointmentsLoadedFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case HomeLoading():
return loading();case PetLoaded():
return petLoaded(_that.petList);case PetLoadedFailure():
return petLoadedFailure(_that.error);case ClinicsLoaded():
return clinicsLoaded(_that.clinicsList);case ClinicsLoadedFailure():
return clinicsLoadedFailure(_that.error);case AppointmentsLoaded():
return appointmentsLoaded(_that.appointments);case AppointmentsLoadedFailure():
return appointmentsLoadedFailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<PetModel>? petList)?  petLoaded,TResult? Function( SupabaseErrorHandler error)?  petLoadedFailure,TResult? Function( List<ClinicModel>? clinicsList)?  clinicsLoaded,TResult? Function( SupabaseErrorHandler error)?  clinicsLoadedFailure,TResult? Function( List<AppointmentModel>? appointments)?  appointmentsLoaded,TResult? Function( SupabaseErrorHandler error)?  appointmentsLoadedFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case HomeLoading() when loading != null:
return loading();case PetLoaded() when petLoaded != null:
return petLoaded(_that.petList);case PetLoadedFailure() when petLoadedFailure != null:
return petLoadedFailure(_that.error);case ClinicsLoaded() when clinicsLoaded != null:
return clinicsLoaded(_that.clinicsList);case ClinicsLoadedFailure() when clinicsLoadedFailure != null:
return clinicsLoadedFailure(_that.error);case AppointmentsLoaded() when appointmentsLoaded != null:
return appointmentsLoaded(_that.appointments);case AppointmentsLoadedFailure() when appointmentsLoadedFailure != null:
return appointmentsLoadedFailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'HomeState.initial()';
}


}




/// @nodoc


class HomeLoading implements HomeState {
  const HomeLoading();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'HomeState.loading()';
}


}




/// @nodoc


class PetLoaded implements HomeState {
  const PetLoaded( List<PetModel>? petList): _petList = petList;
  

 final  List<PetModel>? _petList;
 List<PetModel>? get petList {
  final value = _petList;
  if (value == null) return null;
  if (_petList is EqualUnmodifiableListView) return _petList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PetLoadedCopyWith<PetLoaded> get copyWith => _$PetLoadedCopyWithImpl<PetLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PetLoaded&&const DeepCollectionEquality().equals(other.petList, _petList));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_petList));
}

@override
String toString() {
    return 'HomeState.petLoaded(petList: $petList)';
}


}

/// @nodoc
abstract mixin class $PetLoadedCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $PetLoadedCopyWith(PetLoaded value, $Res Function(PetLoaded) _then) = _$PetLoadedCopyWithImpl;
@useResult
$Res call({
 List<PetModel>? petList
});




}
/// @nodoc
class _$PetLoadedCopyWithImpl<$Res>
    implements $PetLoadedCopyWith<$Res> {
  _$PetLoadedCopyWithImpl(this._self, this._then);

  final PetLoaded _self;
  final $Res Function(PetLoaded) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? petList = freezed,}) {
  return _then(PetLoaded(
freezed == petList ? _self._petList : petList // ignore: cast_nullable_to_non_nullable
as List<PetModel>?,
  ));
}


}

/// @nodoc


class PetLoadedFailure implements HomeState {
  const PetLoadedFailure(this.error);
  

 final  SupabaseErrorHandler error;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PetLoadedFailureCopyWith<PetLoadedFailure> get copyWith => _$PetLoadedFailureCopyWithImpl<PetLoadedFailure>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PetLoadedFailure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode {
    return Object.hash(runtimeType,error);
}

@override
String toString() {
    return 'HomeState.petLoadedFailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $PetLoadedFailureCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $PetLoadedFailureCopyWith(PetLoadedFailure value, $Res Function(PetLoadedFailure) _then) = _$PetLoadedFailureCopyWithImpl;
@useResult
$Res call({
 SupabaseErrorHandler error
});




}
/// @nodoc
class _$PetLoadedFailureCopyWithImpl<$Res>
    implements $PetLoadedFailureCopyWith<$Res> {
  _$PetLoadedFailureCopyWithImpl(this._self, this._then);

  final PetLoadedFailure _self;
  final $Res Function(PetLoadedFailure) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(PetLoadedFailure(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as SupabaseErrorHandler,
  ));
}


}

/// @nodoc


class ClinicsLoaded implements HomeState {
  const ClinicsLoaded( List<ClinicModel>? clinicsList): _clinicsList = clinicsList;
  

 final  List<ClinicModel>? _clinicsList;
 List<ClinicModel>? get clinicsList {
  final value = _clinicsList;
  if (value == null) return null;
  if (_clinicsList is EqualUnmodifiableListView) return _clinicsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClinicsLoadedCopyWith<ClinicsLoaded> get copyWith => _$ClinicsLoadedCopyWithImpl<ClinicsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ClinicsLoaded&&const DeepCollectionEquality().equals(other.clinicsList, _clinicsList));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_clinicsList));
}

@override
String toString() {
    return 'HomeState.clinicsLoaded(clinicsList: $clinicsList)';
}


}

/// @nodoc
abstract mixin class $ClinicsLoadedCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $ClinicsLoadedCopyWith(ClinicsLoaded value, $Res Function(ClinicsLoaded) _then) = _$ClinicsLoadedCopyWithImpl;
@useResult
$Res call({
 List<ClinicModel>? clinicsList
});




}
/// @nodoc
class _$ClinicsLoadedCopyWithImpl<$Res>
    implements $ClinicsLoadedCopyWith<$Res> {
  _$ClinicsLoadedCopyWithImpl(this._self, this._then);

  final ClinicsLoaded _self;
  final $Res Function(ClinicsLoaded) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? clinicsList = freezed,}) {
  return _then(ClinicsLoaded(
freezed == clinicsList ? _self._clinicsList : clinicsList // ignore: cast_nullable_to_non_nullable
as List<ClinicModel>?,
  ));
}


}

/// @nodoc


class ClinicsLoadedFailure implements HomeState {
  const ClinicsLoadedFailure(this.error);
  

 final  SupabaseErrorHandler error;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClinicsLoadedFailureCopyWith<ClinicsLoadedFailure> get copyWith => _$ClinicsLoadedFailureCopyWithImpl<ClinicsLoadedFailure>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ClinicsLoadedFailure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode {
    return Object.hash(runtimeType,error);
}

@override
String toString() {
    return 'HomeState.clinicsLoadedFailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $ClinicsLoadedFailureCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $ClinicsLoadedFailureCopyWith(ClinicsLoadedFailure value, $Res Function(ClinicsLoadedFailure) _then) = _$ClinicsLoadedFailureCopyWithImpl;
@useResult
$Res call({
 SupabaseErrorHandler error
});




}
/// @nodoc
class _$ClinicsLoadedFailureCopyWithImpl<$Res>
    implements $ClinicsLoadedFailureCopyWith<$Res> {
  _$ClinicsLoadedFailureCopyWithImpl(this._self, this._then);

  final ClinicsLoadedFailure _self;
  final $Res Function(ClinicsLoadedFailure) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ClinicsLoadedFailure(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as SupabaseErrorHandler,
  ));
}


}

/// @nodoc


class AppointmentsLoaded implements HomeState {
  const AppointmentsLoaded( List<AppointmentModel>? appointments): _appointments = appointments;
  

 final  List<AppointmentModel>? _appointments;
 List<AppointmentModel>? get appointments {
  final value = _appointments;
  if (value == null) return null;
  if (_appointments is EqualUnmodifiableListView) return _appointments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentsLoadedCopyWith<AppointmentsLoaded> get copyWith => _$AppointmentsLoadedCopyWithImpl<AppointmentsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentsLoaded&&const DeepCollectionEquality().equals(other.appointments, _appointments));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_appointments));
}

@override
String toString() {
    return 'HomeState.appointmentsLoaded(appointments: $appointments)';
}


}

/// @nodoc
abstract mixin class $AppointmentsLoadedCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $AppointmentsLoadedCopyWith(AppointmentsLoaded value, $Res Function(AppointmentsLoaded) _then) = _$AppointmentsLoadedCopyWithImpl;
@useResult
$Res call({
 List<AppointmentModel>? appointments
});




}
/// @nodoc
class _$AppointmentsLoadedCopyWithImpl<$Res>
    implements $AppointmentsLoadedCopyWith<$Res> {
  _$AppointmentsLoadedCopyWithImpl(this._self, this._then);

  final AppointmentsLoaded _self;
  final $Res Function(AppointmentsLoaded) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? appointments = freezed,}) {
  return _then(AppointmentsLoaded(
freezed == appointments ? _self._appointments : appointments // ignore: cast_nullable_to_non_nullable
as List<AppointmentModel>?,
  ));
}


}

/// @nodoc


class AppointmentsLoadedFailure implements HomeState {
  const AppointmentsLoadedFailure(this.error);
  

 final  SupabaseErrorHandler error;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentsLoadedFailureCopyWith<AppointmentsLoadedFailure> get copyWith => _$AppointmentsLoadedFailureCopyWithImpl<AppointmentsLoadedFailure>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentsLoadedFailure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode {
    return Object.hash(runtimeType,error);
}

@override
String toString() {
    return 'HomeState.appointmentsLoadedFailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $AppointmentsLoadedFailureCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $AppointmentsLoadedFailureCopyWith(AppointmentsLoadedFailure value, $Res Function(AppointmentsLoadedFailure) _then) = _$AppointmentsLoadedFailureCopyWithImpl;
@useResult
$Res call({
 SupabaseErrorHandler error
});




}
/// @nodoc
class _$AppointmentsLoadedFailureCopyWithImpl<$Res>
    implements $AppointmentsLoadedFailureCopyWith<$Res> {
  _$AppointmentsLoadedFailureCopyWithImpl(this._self, this._then);

  final AppointmentsLoadedFailure _self;
  final $Res Function(AppointmentsLoadedFailure) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(AppointmentsLoadedFailure(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as SupabaseErrorHandler,
  ));
}


}

// dart format on
