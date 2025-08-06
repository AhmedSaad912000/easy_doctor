// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSpecializations,
    required TResult Function(int specializationId)
        getDoctorsBySpecializationId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSpecializations,
    TResult? Function(int specializationId)? getDoctorsBySpecializationId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSpecializations,
    TResult Function(int specializationId)? getDoctorsBySpecializationId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSpecializations value) getSpecializations,
    required TResult Function(GetDoctorsBySpecializationId value)
        getDoctorsBySpecializationId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSpecializations value)? getSpecializations,
    TResult? Function(GetDoctorsBySpecializationId value)?
        getDoctorsBySpecializationId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSpecializations value)? getSpecializations,
    TResult Function(GetDoctorsBySpecializationId value)?
        getDoctorsBySpecializationId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSpecializationsImplCopyWith<$Res> {
  factory _$$GetSpecializationsImplCopyWith(_$GetSpecializationsImpl value,
          $Res Function(_$GetSpecializationsImpl) then) =
      __$$GetSpecializationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSpecializationsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetSpecializationsImpl>
    implements _$$GetSpecializationsImplCopyWith<$Res> {
  __$$GetSpecializationsImplCopyWithImpl(_$GetSpecializationsImpl _value,
      $Res Function(_$GetSpecializationsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetSpecializationsImpl implements GetSpecializations {
  const _$GetSpecializationsImpl();

  @override
  String toString() {
    return 'HomeEvent.getSpecializations()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSpecializationsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSpecializations,
    required TResult Function(int specializationId)
        getDoctorsBySpecializationId,
  }) {
    return getSpecializations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSpecializations,
    TResult? Function(int specializationId)? getDoctorsBySpecializationId,
  }) {
    return getSpecializations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSpecializations,
    TResult Function(int specializationId)? getDoctorsBySpecializationId,
    required TResult orElse(),
  }) {
    if (getSpecializations != null) {
      return getSpecializations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSpecializations value) getSpecializations,
    required TResult Function(GetDoctorsBySpecializationId value)
        getDoctorsBySpecializationId,
  }) {
    return getSpecializations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSpecializations value)? getSpecializations,
    TResult? Function(GetDoctorsBySpecializationId value)?
        getDoctorsBySpecializationId,
  }) {
    return getSpecializations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSpecializations value)? getSpecializations,
    TResult Function(GetDoctorsBySpecializationId value)?
        getDoctorsBySpecializationId,
    required TResult orElse(),
  }) {
    if (getSpecializations != null) {
      return getSpecializations(this);
    }
    return orElse();
  }
}

abstract class GetSpecializations implements HomeEvent {
  const factory GetSpecializations() = _$GetSpecializationsImpl;
}

/// @nodoc
abstract class _$$GetDoctorsBySpecializationIdImplCopyWith<$Res> {
  factory _$$GetDoctorsBySpecializationIdImplCopyWith(
          _$GetDoctorsBySpecializationIdImpl value,
          $Res Function(_$GetDoctorsBySpecializationIdImpl) then) =
      __$$GetDoctorsBySpecializationIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int specializationId});
}

/// @nodoc
class __$$GetDoctorsBySpecializationIdImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetDoctorsBySpecializationIdImpl>
    implements _$$GetDoctorsBySpecializationIdImplCopyWith<$Res> {
  __$$GetDoctorsBySpecializationIdImplCopyWithImpl(
      _$GetDoctorsBySpecializationIdImpl _value,
      $Res Function(_$GetDoctorsBySpecializationIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specializationId = null,
  }) {
    return _then(_$GetDoctorsBySpecializationIdImpl(
      specializationId: null == specializationId
          ? _value.specializationId
          : specializationId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetDoctorsBySpecializationIdImpl
    implements GetDoctorsBySpecializationId {
  const _$GetDoctorsBySpecializationIdImpl({required this.specializationId});

  @override
  final int specializationId;

  @override
  String toString() {
    return 'HomeEvent.getDoctorsBySpecializationId(specializationId: $specializationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDoctorsBySpecializationIdImpl &&
            (identical(other.specializationId, specializationId) ||
                other.specializationId == specializationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, specializationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDoctorsBySpecializationIdImplCopyWith<
          _$GetDoctorsBySpecializationIdImpl>
      get copyWith => __$$GetDoctorsBySpecializationIdImplCopyWithImpl<
          _$GetDoctorsBySpecializationIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSpecializations,
    required TResult Function(int specializationId)
        getDoctorsBySpecializationId,
  }) {
    return getDoctorsBySpecializationId(specializationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSpecializations,
    TResult? Function(int specializationId)? getDoctorsBySpecializationId,
  }) {
    return getDoctorsBySpecializationId?.call(specializationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSpecializations,
    TResult Function(int specializationId)? getDoctorsBySpecializationId,
    required TResult orElse(),
  }) {
    if (getDoctorsBySpecializationId != null) {
      return getDoctorsBySpecializationId(specializationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSpecializations value) getSpecializations,
    required TResult Function(GetDoctorsBySpecializationId value)
        getDoctorsBySpecializationId,
  }) {
    return getDoctorsBySpecializationId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSpecializations value)? getSpecializations,
    TResult? Function(GetDoctorsBySpecializationId value)?
        getDoctorsBySpecializationId,
  }) {
    return getDoctorsBySpecializationId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSpecializations value)? getSpecializations,
    TResult Function(GetDoctorsBySpecializationId value)?
        getDoctorsBySpecializationId,
    required TResult orElse(),
  }) {
    if (getDoctorsBySpecializationId != null) {
      return getDoctorsBySpecializationId(this);
    }
    return orElse();
  }
}

abstract class GetDoctorsBySpecializationId implements HomeEvent {
  const factory GetDoctorsBySpecializationId(
          {required final int specializationId}) =
      _$GetDoctorsBySpecializationIdImpl;

  int get specializationId;
  @JsonKey(ignore: true)
  _$$GetDoctorsBySpecializationIdImplCopyWith<
          _$GetDoctorsBySpecializationIdImpl>
      get copyWith => throw _privateConstructorUsedError;
}
