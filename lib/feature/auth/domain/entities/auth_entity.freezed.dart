// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthRegisterRequestEntity {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  /// Create a copy of AuthRegisterRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthRegisterRequestEntityCopyWith<AuthRegisterRequestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthRegisterRequestEntityCopyWith<$Res> {
  factory $AuthRegisterRequestEntityCopyWith(AuthRegisterRequestEntity value,
          $Res Function(AuthRegisterRequestEntity) then) =
      _$AuthRegisterRequestEntityCopyWithImpl<$Res, AuthRegisterRequestEntity>;
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class _$AuthRegisterRequestEntityCopyWithImpl<$Res,
        $Val extends AuthRegisterRequestEntity>
    implements $AuthRegisterRequestEntityCopyWith<$Res> {
  _$AuthRegisterRequestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthRegisterRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthRegisterRequestEntityImplCopyWith<$Res>
    implements $AuthRegisterRequestEntityCopyWith<$Res> {
  factory _$$AuthRegisterRequestEntityImplCopyWith(
          _$AuthRegisterRequestEntityImpl value,
          $Res Function(_$AuthRegisterRequestEntityImpl) then) =
      __$$AuthRegisterRequestEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class __$$AuthRegisterRequestEntityImplCopyWithImpl<$Res>
    extends _$AuthRegisterRequestEntityCopyWithImpl<$Res,
        _$AuthRegisterRequestEntityImpl>
    implements _$$AuthRegisterRequestEntityImplCopyWith<$Res> {
  __$$AuthRegisterRequestEntityImplCopyWithImpl(
      _$AuthRegisterRequestEntityImpl _value,
      $Res Function(_$AuthRegisterRequestEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthRegisterRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$AuthRegisterRequestEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthRegisterRequestEntityImpl implements _AuthRegisterRequestEntity {
  const _$AuthRegisterRequestEntityImpl(
      {required this.name, required this.email});

  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'AuthRegisterRequestEntity(name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthRegisterRequestEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email);

  /// Create a copy of AuthRegisterRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthRegisterRequestEntityImplCopyWith<_$AuthRegisterRequestEntityImpl>
      get copyWith => __$$AuthRegisterRequestEntityImplCopyWithImpl<
          _$AuthRegisterRequestEntityImpl>(this, _$identity);
}

abstract class _AuthRegisterRequestEntity implements AuthRegisterRequestEntity {
  const factory _AuthRegisterRequestEntity(
      {required final String name,
      required final String email}) = _$AuthRegisterRequestEntityImpl;

  @override
  String get name;
  @override
  String get email;

  /// Create a copy of AuthRegisterRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthRegisterRequestEntityImplCopyWith<_$AuthRegisterRequestEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthLoginRequestEntity {
  String get email => throw _privateConstructorUsedError;

  /// Create a copy of AuthLoginRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthLoginRequestEntityCopyWith<AuthLoginRequestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthLoginRequestEntityCopyWith<$Res> {
  factory $AuthLoginRequestEntityCopyWith(AuthLoginRequestEntity value,
          $Res Function(AuthLoginRequestEntity) then) =
      _$AuthLoginRequestEntityCopyWithImpl<$Res, AuthLoginRequestEntity>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$AuthLoginRequestEntityCopyWithImpl<$Res,
        $Val extends AuthLoginRequestEntity>
    implements $AuthLoginRequestEntityCopyWith<$Res> {
  _$AuthLoginRequestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthLoginRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthLoginRequestEntityImplCopyWith<$Res>
    implements $AuthLoginRequestEntityCopyWith<$Res> {
  factory _$$AuthLoginRequestEntityImplCopyWith(
          _$AuthLoginRequestEntityImpl value,
          $Res Function(_$AuthLoginRequestEntityImpl) then) =
      __$$AuthLoginRequestEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$AuthLoginRequestEntityImplCopyWithImpl<$Res>
    extends _$AuthLoginRequestEntityCopyWithImpl<$Res,
        _$AuthLoginRequestEntityImpl>
    implements _$$AuthLoginRequestEntityImplCopyWith<$Res> {
  __$$AuthLoginRequestEntityImplCopyWithImpl(
      _$AuthLoginRequestEntityImpl _value,
      $Res Function(_$AuthLoginRequestEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthLoginRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$AuthLoginRequestEntityImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthLoginRequestEntityImpl implements _AuthLoginRequestEntity {
  const _$AuthLoginRequestEntityImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthLoginRequestEntity(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthLoginRequestEntityImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthLoginRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthLoginRequestEntityImplCopyWith<_$AuthLoginRequestEntityImpl>
      get copyWith => __$$AuthLoginRequestEntityImplCopyWithImpl<
          _$AuthLoginRequestEntityImpl>(this, _$identity);
}

abstract class _AuthLoginRequestEntity implements AuthLoginRequestEntity {
  const factory _AuthLoginRequestEntity({required final String email}) =
      _$AuthLoginRequestEntityImpl;

  @override
  String get email;

  /// Create a copy of AuthLoginRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthLoginRequestEntityImplCopyWith<_$AuthLoginRequestEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthVerifeRequestEntity {
  String get email => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  /// Create a copy of AuthVerifeRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthVerifeRequestEntityCopyWith<AuthVerifeRequestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthVerifeRequestEntityCopyWith<$Res> {
  factory $AuthVerifeRequestEntityCopyWith(AuthVerifeRequestEntity value,
          $Res Function(AuthVerifeRequestEntity) then) =
      _$AuthVerifeRequestEntityCopyWithImpl<$Res, AuthVerifeRequestEntity>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class _$AuthVerifeRequestEntityCopyWithImpl<$Res,
        $Val extends AuthVerifeRequestEntity>
    implements $AuthVerifeRequestEntityCopyWith<$Res> {
  _$AuthVerifeRequestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthVerifeRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthVerifeRequestEntityImplCopyWith<$Res>
    implements $AuthVerifeRequestEntityCopyWith<$Res> {
  factory _$$AuthVerifeRequestEntityImplCopyWith(
          _$AuthVerifeRequestEntityImpl value,
          $Res Function(_$AuthVerifeRequestEntityImpl) then) =
      __$$AuthVerifeRequestEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$AuthVerifeRequestEntityImplCopyWithImpl<$Res>
    extends _$AuthVerifeRequestEntityCopyWithImpl<$Res,
        _$AuthVerifeRequestEntityImpl>
    implements _$$AuthVerifeRequestEntityImplCopyWith<$Res> {
  __$$AuthVerifeRequestEntityImplCopyWithImpl(
      _$AuthVerifeRequestEntityImpl _value,
      $Res Function(_$AuthVerifeRequestEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthVerifeRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$AuthVerifeRequestEntityImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthVerifeRequestEntityImpl implements _AuthVerifeRequestEntity {
  const _$AuthVerifeRequestEntityImpl(
      {required this.email, required this.code});

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'AuthVerifeRequestEntity(email: $email, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthVerifeRequestEntityImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  /// Create a copy of AuthVerifeRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthVerifeRequestEntityImplCopyWith<_$AuthVerifeRequestEntityImpl>
      get copyWith => __$$AuthVerifeRequestEntityImplCopyWithImpl<
          _$AuthVerifeRequestEntityImpl>(this, _$identity);
}

abstract class _AuthVerifeRequestEntity implements AuthVerifeRequestEntity {
  const factory _AuthVerifeRequestEntity(
      {required final String email,
      required final String code}) = _$AuthVerifeRequestEntityImpl;

  @override
  String get email;
  @override
  String get code;

  /// Create a copy of AuthVerifeRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthVerifeRequestEntityImplCopyWith<_$AuthVerifeRequestEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
