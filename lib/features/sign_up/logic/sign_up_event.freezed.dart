// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String phone,
            String name, String confirmpassword)
        signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password, String phone, String name,
            String confirmpassword)?
        signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String phone, String name,
            String confirmpassword)?
        signup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStarted value) started,
    required TResult Function(SignUpRequested value) signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStarted value)? started,
    TResult? Function(SignUpRequested value)? signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStarted value)? started,
    TResult Function(SignUpRequested value)? signup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignUpStartedImplCopyWith<$Res> {
  factory _$$SignUpStartedImplCopyWith(
          _$SignUpStartedImpl value, $Res Function(_$SignUpStartedImpl) then) =
      __$$SignUpStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpStartedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpStartedImpl>
    implements _$$SignUpStartedImplCopyWith<$Res> {
  __$$SignUpStartedImplCopyWithImpl(
      _$SignUpStartedImpl _value, $Res Function(_$SignUpStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpStartedImpl implements SignUpStarted {
  const _$SignUpStartedImpl();

  @override
  String toString() {
    return 'SignUpEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String phone,
            String name, String confirmpassword)
        signup,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password, String phone, String name,
            String confirmpassword)?
        signup,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String phone, String name,
            String confirmpassword)?
        signup,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStarted value) started,
    required TResult Function(SignUpRequested value) signup,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStarted value)? started,
    TResult? Function(SignUpRequested value)? signup,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStarted value)? started,
    TResult Function(SignUpRequested value)? signup,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class SignUpStarted implements SignUpEvent {
  const factory SignUpStarted() = _$SignUpStartedImpl;
}

/// @nodoc
abstract class _$$SignUpRequestedImplCopyWith<$Res> {
  factory _$$SignUpRequestedImplCopyWith(_$SignUpRequestedImpl value,
          $Res Function(_$SignUpRequestedImpl) then) =
      __$$SignUpRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email,
      String password,
      String phone,
      String name,
      String confirmpassword});
}

/// @nodoc
class __$$SignUpRequestedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpRequestedImpl>
    implements _$$SignUpRequestedImplCopyWith<$Res> {
  __$$SignUpRequestedImplCopyWithImpl(
      _$SignUpRequestedImpl _value, $Res Function(_$SignUpRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? phone = null,
    Object? name = null,
    Object? confirmpassword = null,
  }) {
    return _then(_$SignUpRequestedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      confirmpassword: null == confirmpassword
          ? _value.confirmpassword
          : confirmpassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpRequestedImpl implements SignUpRequested {
  const _$SignUpRequestedImpl(
      {required this.email,
      required this.password,
      required this.phone,
      required this.name,
      required this.confirmpassword});

  @override
  final String email;
  @override
  final String password;
  @override
  final String phone;
  @override
  final String name;
  @override
  final String confirmpassword;

  @override
  String toString() {
    return 'SignUpEvent.signup(email: $email, password: $password, phone: $phone, name: $name, confirmpassword: $confirmpassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpRequestedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.confirmpassword, confirmpassword) ||
                other.confirmpassword == confirmpassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, phone, name, confirmpassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpRequestedImplCopyWith<_$SignUpRequestedImpl> get copyWith =>
      __$$SignUpRequestedImplCopyWithImpl<_$SignUpRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String phone,
            String name, String confirmpassword)
        signup,
  }) {
    return signup(email, password, phone, name, confirmpassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password, String phone, String name,
            String confirmpassword)?
        signup,
  }) {
    return signup?.call(email, password, phone, name, confirmpassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String phone, String name,
            String confirmpassword)?
        signup,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(email, password, phone, name, confirmpassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStarted value) started,
    required TResult Function(SignUpRequested value) signup,
  }) {
    return signup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStarted value)? started,
    TResult? Function(SignUpRequested value)? signup,
  }) {
    return signup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStarted value)? started,
    TResult Function(SignUpRequested value)? signup,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(this);
    }
    return orElse();
  }
}

abstract class SignUpRequested implements SignUpEvent {
  const factory SignUpRequested(
      {required final String email,
      required final String password,
      required final String phone,
      required final String name,
      required final String confirmpassword}) = _$SignUpRequestedImpl;

  String get email;
  String get password;
  String get phone;
  String get name;
  String get confirmpassword;
  @JsonKey(ignore: true)
  _$$SignUpRequestedImplCopyWith<_$SignUpRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
