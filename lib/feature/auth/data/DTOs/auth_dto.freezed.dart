// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthRegisterRequestDTO _$AuthRegisterRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _AuthRegisterRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$AuthRegisterRequestDTO {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  /// Serializes this AuthRegisterRequestDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthRegisterRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthRegisterRequestDTOCopyWith<AuthRegisterRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthRegisterRequestDTOCopyWith<$Res> {
  factory $AuthRegisterRequestDTOCopyWith(AuthRegisterRequestDTO value,
          $Res Function(AuthRegisterRequestDTO) then) =
      _$AuthRegisterRequestDTOCopyWithImpl<$Res, AuthRegisterRequestDTO>;
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class _$AuthRegisterRequestDTOCopyWithImpl<$Res,
        $Val extends AuthRegisterRequestDTO>
    implements $AuthRegisterRequestDTOCopyWith<$Res> {
  _$AuthRegisterRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthRegisterRequestDTO
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
abstract class _$$AuthRegisterRequestDTOImplCopyWith<$Res>
    implements $AuthRegisterRequestDTOCopyWith<$Res> {
  factory _$$AuthRegisterRequestDTOImplCopyWith(
          _$AuthRegisterRequestDTOImpl value,
          $Res Function(_$AuthRegisterRequestDTOImpl) then) =
      __$$AuthRegisterRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class __$$AuthRegisterRequestDTOImplCopyWithImpl<$Res>
    extends _$AuthRegisterRequestDTOCopyWithImpl<$Res,
        _$AuthRegisterRequestDTOImpl>
    implements _$$AuthRegisterRequestDTOImplCopyWith<$Res> {
  __$$AuthRegisterRequestDTOImplCopyWithImpl(
      _$AuthRegisterRequestDTOImpl _value,
      $Res Function(_$AuthRegisterRequestDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthRegisterRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$AuthRegisterRequestDTOImpl(
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
@JsonSerializable()
class _$AuthRegisterRequestDTOImpl implements _AuthRegisterRequestDTO {
  const _$AuthRegisterRequestDTOImpl({required this.name, required this.email});

  factory _$AuthRegisterRequestDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthRegisterRequestDTOImplFromJson(json);

  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'AuthRegisterRequestDTO(name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthRegisterRequestDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, email);

  /// Create a copy of AuthRegisterRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthRegisterRequestDTOImplCopyWith<_$AuthRegisterRequestDTOImpl>
      get copyWith => __$$AuthRegisterRequestDTOImplCopyWithImpl<
          _$AuthRegisterRequestDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthRegisterRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _AuthRegisterRequestDTO implements AuthRegisterRequestDTO {
  const factory _AuthRegisterRequestDTO(
      {required final String name,
      required final String email}) = _$AuthRegisterRequestDTOImpl;

  factory _AuthRegisterRequestDTO.fromJson(Map<String, dynamic> json) =
      _$AuthRegisterRequestDTOImpl.fromJson;

  @override
  String get name;
  @override
  String get email;

  /// Create a copy of AuthRegisterRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthRegisterRequestDTOImplCopyWith<_$AuthRegisterRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AuthVerifeRequestDTO _$AuthVerifeRequestDTOFromJson(Map<String, dynamic> json) {
  return _AuthVerifeRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$AuthVerifeRequestDTO {
  String get email => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  /// Serializes this AuthVerifeRequestDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthVerifeRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthVerifeRequestDTOCopyWith<AuthVerifeRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthVerifeRequestDTOCopyWith<$Res> {
  factory $AuthVerifeRequestDTOCopyWith(AuthVerifeRequestDTO value,
          $Res Function(AuthVerifeRequestDTO) then) =
      _$AuthVerifeRequestDTOCopyWithImpl<$Res, AuthVerifeRequestDTO>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class _$AuthVerifeRequestDTOCopyWithImpl<$Res,
        $Val extends AuthVerifeRequestDTO>
    implements $AuthVerifeRequestDTOCopyWith<$Res> {
  _$AuthVerifeRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthVerifeRequestDTO
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
abstract class _$$AuthVerifeRequestDTOImplCopyWith<$Res>
    implements $AuthVerifeRequestDTOCopyWith<$Res> {
  factory _$$AuthVerifeRequestDTOImplCopyWith(_$AuthVerifeRequestDTOImpl value,
          $Res Function(_$AuthVerifeRequestDTOImpl) then) =
      __$$AuthVerifeRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$AuthVerifeRequestDTOImplCopyWithImpl<$Res>
    extends _$AuthVerifeRequestDTOCopyWithImpl<$Res, _$AuthVerifeRequestDTOImpl>
    implements _$$AuthVerifeRequestDTOImplCopyWith<$Res> {
  __$$AuthVerifeRequestDTOImplCopyWithImpl(_$AuthVerifeRequestDTOImpl _value,
      $Res Function(_$AuthVerifeRequestDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthVerifeRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$AuthVerifeRequestDTOImpl(
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
@JsonSerializable()
class _$AuthVerifeRequestDTOImpl implements _AuthVerifeRequestDTO {
  const _$AuthVerifeRequestDTOImpl({required this.email, required this.code});

  factory _$AuthVerifeRequestDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthVerifeRequestDTOImplFromJson(json);

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'AuthVerifeRequestDTO(email: $email, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthVerifeRequestDTOImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  /// Create a copy of AuthVerifeRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthVerifeRequestDTOImplCopyWith<_$AuthVerifeRequestDTOImpl>
      get copyWith =>
          __$$AuthVerifeRequestDTOImplCopyWithImpl<_$AuthVerifeRequestDTOImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthVerifeRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _AuthVerifeRequestDTO implements AuthVerifeRequestDTO {
  const factory _AuthVerifeRequestDTO(
      {required final String email,
      required final String code}) = _$AuthVerifeRequestDTOImpl;

  factory _AuthVerifeRequestDTO.fromJson(Map<String, dynamic> json) =
      _$AuthVerifeRequestDTOImpl.fromJson;

  @override
  String get email;
  @override
  String get code;

  /// Create a copy of AuthVerifeRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthVerifeRequestDTOImplCopyWith<_$AuthVerifeRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AuthTokenDTO _$AuthTokenDTOFromJson(Map<String, dynamic> json) {
  return _AuthTokenDTO.fromJson(json);
}

/// @nodoc
mixin _$AuthTokenDTO {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this AuthTokenDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthTokenDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthTokenDTOCopyWith<AuthTokenDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthTokenDTOCopyWith<$Res> {
  factory $AuthTokenDTOCopyWith(
          AuthTokenDTO value, $Res Function(AuthTokenDTO) then) =
      _$AuthTokenDTOCopyWithImpl<$Res, AuthTokenDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class _$AuthTokenDTOCopyWithImpl<$Res, $Val extends AuthTokenDTO>
    implements $AuthTokenDTOCopyWith<$Res> {
  _$AuthTokenDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthTokenDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthTokenDTOImplCopyWith<$Res>
    implements $AuthTokenDTOCopyWith<$Res> {
  factory _$$AuthTokenDTOImplCopyWith(
          _$AuthTokenDTOImpl value, $Res Function(_$AuthTokenDTOImpl) then) =
      __$$AuthTokenDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class __$$AuthTokenDTOImplCopyWithImpl<$Res>
    extends _$AuthTokenDTOCopyWithImpl<$Res, _$AuthTokenDTOImpl>
    implements _$$AuthTokenDTOImplCopyWith<$Res> {
  __$$AuthTokenDTOImplCopyWithImpl(
      _$AuthTokenDTOImpl _value, $Res Function(_$AuthTokenDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthTokenDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$AuthTokenDTOImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthTokenDTOImpl implements _AuthTokenDTO {
  const _$AuthTokenDTOImpl(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'refresh_token') required this.refreshToken});

  factory _$AuthTokenDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthTokenDTOImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString() {
    return 'AuthTokenDTO(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthTokenDTOImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  /// Create a copy of AuthTokenDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthTokenDTOImplCopyWith<_$AuthTokenDTOImpl> get copyWith =>
      __$$AuthTokenDTOImplCopyWithImpl<_$AuthTokenDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthTokenDTOImplToJson(
      this,
    );
  }
}

abstract class _AuthTokenDTO implements AuthTokenDTO {
  const factory _AuthTokenDTO(
          {@JsonKey(name: 'access_token') required final String accessToken,
          @JsonKey(name: 'refresh_token') required final String refreshToken}) =
      _$AuthTokenDTOImpl;

  factory _AuthTokenDTO.fromJson(Map<String, dynamic> json) =
      _$AuthTokenDTOImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;

  /// Create a copy of AuthTokenDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthTokenDTOImplCopyWith<_$AuthTokenDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
