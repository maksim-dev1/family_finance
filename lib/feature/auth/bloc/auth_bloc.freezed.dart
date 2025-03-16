// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(AuthRegisterRequestEntity authRegisterRequest)
        registration,
    required TResult Function(String authLoginRequest) login,
    required TResult Function(AuthVerifeRequestEntity authVerifeRequest) verify,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(AuthRegisterRequestEntity authRegisterRequest)?
        registration,
    TResult? Function(String authLoginRequest)? login,
    TResult? Function(AuthVerifeRequestEntity authVerifeRequest)? verify,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(AuthRegisterRequestEntity authRegisterRequest)?
        registration,
    TResult Function(String authLoginRequest)? login,
    TResult Function(AuthVerifeRequestEntity authVerifeRequest)? verify,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_Registration value) registration,
    required TResult Function(_Login value) login,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_Registration value)? registration,
    TResult? Function(_Login value)? login,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_Registration value)? registration,
    TResult Function(_Login value)? login,
    TResult Function(_Verify value)? verify,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckAuthImplCopyWith<$Res> {
  factory _$$CheckAuthImplCopyWith(
          _$CheckAuthImpl value, $Res Function(_$CheckAuthImpl) then) =
      __$$CheckAuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckAuthImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckAuthImpl>
    implements _$$CheckAuthImplCopyWith<$Res> {
  __$$CheckAuthImplCopyWithImpl(
      _$CheckAuthImpl _value, $Res Function(_$CheckAuthImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckAuthImpl implements _CheckAuth {
  const _$CheckAuthImpl();

  @override
  String toString() {
    return 'AuthEvent.checkAuth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckAuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(AuthRegisterRequestEntity authRegisterRequest)
        registration,
    required TResult Function(String authLoginRequest) login,
    required TResult Function(AuthVerifeRequestEntity authVerifeRequest) verify,
    required TResult Function() logout,
  }) {
    return checkAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(AuthRegisterRequestEntity authRegisterRequest)?
        registration,
    TResult? Function(String authLoginRequest)? login,
    TResult? Function(AuthVerifeRequestEntity authVerifeRequest)? verify,
    TResult? Function()? logout,
  }) {
    return checkAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(AuthRegisterRequestEntity authRegisterRequest)?
        registration,
    TResult Function(String authLoginRequest)? login,
    TResult Function(AuthVerifeRequestEntity authVerifeRequest)? verify,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_Registration value) registration,
    required TResult Function(_Login value) login,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Logout value) logout,
  }) {
    return checkAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_Registration value)? registration,
    TResult? Function(_Login value)? login,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_Logout value)? logout,
  }) {
    return checkAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_Registration value)? registration,
    TResult Function(_Login value)? login,
    TResult Function(_Verify value)? verify,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth(this);
    }
    return orElse();
  }
}

abstract class _CheckAuth implements AuthEvent {
  const factory _CheckAuth() = _$CheckAuthImpl;
}

/// @nodoc
abstract class _$$RegistrationImplCopyWith<$Res> {
  factory _$$RegistrationImplCopyWith(
          _$RegistrationImpl value, $Res Function(_$RegistrationImpl) then) =
      __$$RegistrationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthRegisterRequestEntity authRegisterRequest});

  $AuthRegisterRequestEntityCopyWith<$Res> get authRegisterRequest;
}

/// @nodoc
class __$$RegistrationImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegistrationImpl>
    implements _$$RegistrationImplCopyWith<$Res> {
  __$$RegistrationImplCopyWithImpl(
      _$RegistrationImpl _value, $Res Function(_$RegistrationImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authRegisterRequest = null,
  }) {
    return _then(_$RegistrationImpl(
      authRegisterRequest: null == authRegisterRequest
          ? _value.authRegisterRequest
          : authRegisterRequest // ignore: cast_nullable_to_non_nullable
              as AuthRegisterRequestEntity,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthRegisterRequestEntityCopyWith<$Res> get authRegisterRequest {
    return $AuthRegisterRequestEntityCopyWith<$Res>(_value.authRegisterRequest,
        (value) {
      return _then(_value.copyWith(authRegisterRequest: value));
    });
  }
}

/// @nodoc

class _$RegistrationImpl implements _Registration {
  const _$RegistrationImpl({required this.authRegisterRequest});

  @override
  final AuthRegisterRequestEntity authRegisterRequest;

  @override
  String toString() {
    return 'AuthEvent.registration(authRegisterRequest: $authRegisterRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationImpl &&
            (identical(other.authRegisterRequest, authRegisterRequest) ||
                other.authRegisterRequest == authRegisterRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authRegisterRequest);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationImplCopyWith<_$RegistrationImpl> get copyWith =>
      __$$RegistrationImplCopyWithImpl<_$RegistrationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(AuthRegisterRequestEntity authRegisterRequest)
        registration,
    required TResult Function(String authLoginRequest) login,
    required TResult Function(AuthVerifeRequestEntity authVerifeRequest) verify,
    required TResult Function() logout,
  }) {
    return registration(authRegisterRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(AuthRegisterRequestEntity authRegisterRequest)?
        registration,
    TResult? Function(String authLoginRequest)? login,
    TResult? Function(AuthVerifeRequestEntity authVerifeRequest)? verify,
    TResult? Function()? logout,
  }) {
    return registration?.call(authRegisterRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(AuthRegisterRequestEntity authRegisterRequest)?
        registration,
    TResult Function(String authLoginRequest)? login,
    TResult Function(AuthVerifeRequestEntity authVerifeRequest)? verify,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (registration != null) {
      return registration(authRegisterRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_Registration value) registration,
    required TResult Function(_Login value) login,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Logout value) logout,
  }) {
    return registration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_Registration value)? registration,
    TResult? Function(_Login value)? login,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_Logout value)? logout,
  }) {
    return registration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_Registration value)? registration,
    TResult Function(_Login value)? login,
    TResult Function(_Verify value)? verify,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (registration != null) {
      return registration(this);
    }
    return orElse();
  }
}

abstract class _Registration implements AuthEvent {
  const factory _Registration(
          {required final AuthRegisterRequestEntity authRegisterRequest}) =
      _$RegistrationImpl;

  AuthRegisterRequestEntity get authRegisterRequest;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationImplCopyWith<_$RegistrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String authLoginRequest});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authLoginRequest = null,
  }) {
    return _then(_$LoginImpl(
      authLoginRequest: null == authLoginRequest
          ? _value.authLoginRequest
          : authLoginRequest // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl({required this.authLoginRequest});

  @override
  final String authLoginRequest;

  @override
  String toString() {
    return 'AuthEvent.login(authLoginRequest: $authLoginRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.authLoginRequest, authLoginRequest) ||
                other.authLoginRequest == authLoginRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authLoginRequest);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(AuthRegisterRequestEntity authRegisterRequest)
        registration,
    required TResult Function(String authLoginRequest) login,
    required TResult Function(AuthVerifeRequestEntity authVerifeRequest) verify,
    required TResult Function() logout,
  }) {
    return login(authLoginRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(AuthRegisterRequestEntity authRegisterRequest)?
        registration,
    TResult? Function(String authLoginRequest)? login,
    TResult? Function(AuthVerifeRequestEntity authVerifeRequest)? verify,
    TResult? Function()? logout,
  }) {
    return login?.call(authLoginRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(AuthRegisterRequestEntity authRegisterRequest)?
        registration,
    TResult Function(String authLoginRequest)? login,
    TResult Function(AuthVerifeRequestEntity authVerifeRequest)? verify,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(authLoginRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_Registration value) registration,
    required TResult Function(_Login value) login,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Logout value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_Registration value)? registration,
    TResult? Function(_Login value)? login,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_Logout value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_Registration value)? registration,
    TResult Function(_Login value)? login,
    TResult Function(_Verify value)? verify,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login({required final String authLoginRequest}) = _$LoginImpl;

  String get authLoginRequest;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyImplCopyWith<$Res> {
  factory _$$VerifyImplCopyWith(
          _$VerifyImpl value, $Res Function(_$VerifyImpl) then) =
      __$$VerifyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthVerifeRequestEntity authVerifeRequest});

  $AuthVerifeRequestEntityCopyWith<$Res> get authVerifeRequest;
}

/// @nodoc
class __$$VerifyImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyImpl>
    implements _$$VerifyImplCopyWith<$Res> {
  __$$VerifyImplCopyWithImpl(
      _$VerifyImpl _value, $Res Function(_$VerifyImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authVerifeRequest = null,
  }) {
    return _then(_$VerifyImpl(
      authVerifeRequest: null == authVerifeRequest
          ? _value.authVerifeRequest
          : authVerifeRequest // ignore: cast_nullable_to_non_nullable
              as AuthVerifeRequestEntity,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthVerifeRequestEntityCopyWith<$Res> get authVerifeRequest {
    return $AuthVerifeRequestEntityCopyWith<$Res>(_value.authVerifeRequest,
        (value) {
      return _then(_value.copyWith(authVerifeRequest: value));
    });
  }
}

/// @nodoc

class _$VerifyImpl implements _Verify {
  const _$VerifyImpl({required this.authVerifeRequest});

  @override
  final AuthVerifeRequestEntity authVerifeRequest;

  @override
  String toString() {
    return 'AuthEvent.verify(authVerifeRequest: $authVerifeRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyImpl &&
            (identical(other.authVerifeRequest, authVerifeRequest) ||
                other.authVerifeRequest == authVerifeRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authVerifeRequest);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyImplCopyWith<_$VerifyImpl> get copyWith =>
      __$$VerifyImplCopyWithImpl<_$VerifyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(AuthRegisterRequestEntity authRegisterRequest)
        registration,
    required TResult Function(String authLoginRequest) login,
    required TResult Function(AuthVerifeRequestEntity authVerifeRequest) verify,
    required TResult Function() logout,
  }) {
    return verify(authVerifeRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(AuthRegisterRequestEntity authRegisterRequest)?
        registration,
    TResult? Function(String authLoginRequest)? login,
    TResult? Function(AuthVerifeRequestEntity authVerifeRequest)? verify,
    TResult? Function()? logout,
  }) {
    return verify?.call(authVerifeRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(AuthRegisterRequestEntity authRegisterRequest)?
        registration,
    TResult Function(String authLoginRequest)? login,
    TResult Function(AuthVerifeRequestEntity authVerifeRequest)? verify,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (verify != null) {
      return verify(authVerifeRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_Registration value) registration,
    required TResult Function(_Login value) login,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Logout value) logout,
  }) {
    return verify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_Registration value)? registration,
    TResult? Function(_Login value)? login,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_Logout value)? logout,
  }) {
    return verify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_Registration value)? registration,
    TResult Function(_Login value)? login,
    TResult Function(_Verify value)? verify,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (verify != null) {
      return verify(this);
    }
    return orElse();
  }
}

abstract class _Verify implements AuthEvent {
  const factory _Verify(
          {required final AuthVerifeRequestEntity authVerifeRequest}) =
      _$VerifyImpl;

  AuthVerifeRequestEntity get authVerifeRequest;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyImplCopyWith<_$VerifyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(AuthRegisterRequestEntity authRegisterRequest)
        registration,
    required TResult Function(String authLoginRequest) login,
    required TResult Function(AuthVerifeRequestEntity authVerifeRequest) verify,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(AuthRegisterRequestEntity authRegisterRequest)?
        registration,
    TResult? Function(String authLoginRequest)? login,
    TResult? Function(AuthVerifeRequestEntity authVerifeRequest)? verify,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(AuthRegisterRequestEntity authRegisterRequest)?
        registration,
    TResult Function(String authLoginRequest)? login,
    TResult Function(AuthVerifeRequestEntity authVerifeRequest)? verify,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_Registration value) registration,
    required TResult Function(_Login value) login,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_Registration value)? registration,
    TResult? Function(_Login value)? login,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_Registration value)? registration,
    TResult Function(_Login value)? login,
    TResult Function(_Verify value)? verify,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() auntificatid,
    required TResult Function() unAuntificatid,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? auntificatid,
    TResult? Function()? unAuntificatid,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? auntificatid,
    TResult Function()? unAuntificatid,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Auntificatid value) auntificatid,
    required TResult Function(_UnAuntificatid value) unAuntificatid,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Auntificatid value)? auntificatid,
    TResult? Function(_UnAuntificatid value)? unAuntificatid,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Auntificatid value)? auntificatid,
    TResult Function(_UnAuntificatid value)? unAuntificatid,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() auntificatid,
    required TResult Function() unAuntificatid,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? auntificatid,
    TResult? Function()? unAuntificatid,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? auntificatid,
    TResult Function()? unAuntificatid,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Auntificatid value) auntificatid,
    required TResult Function(_UnAuntificatid value) unAuntificatid,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Auntificatid value)? auntificatid,
    TResult? Function(_UnAuntificatid value)? unAuntificatid,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Auntificatid value)? auntificatid,
    TResult Function(_UnAuntificatid value)? unAuntificatid,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() auntificatid,
    required TResult Function() unAuntificatid,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? auntificatid,
    TResult? Function()? unAuntificatid,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? auntificatid,
    TResult Function()? unAuntificatid,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Auntificatid value) auntificatid,
    required TResult Function(_UnAuntificatid value) unAuntificatid,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Auntificatid value)? auntificatid,
    TResult? Function(_UnAuntificatid value)? unAuntificatid,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Auntificatid value)? auntificatid,
    TResult Function(_UnAuntificatid value)? unAuntificatid,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$AuntificatidImplCopyWith<$Res> {
  factory _$$AuntificatidImplCopyWith(
          _$AuntificatidImpl value, $Res Function(_$AuntificatidImpl) then) =
      __$$AuntificatidImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuntificatidImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuntificatidImpl>
    implements _$$AuntificatidImplCopyWith<$Res> {
  __$$AuntificatidImplCopyWithImpl(
      _$AuntificatidImpl _value, $Res Function(_$AuntificatidImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuntificatidImpl implements _Auntificatid {
  const _$AuntificatidImpl();

  @override
  String toString() {
    return 'AuthState.auntificatid()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuntificatidImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() auntificatid,
    required TResult Function() unAuntificatid,
    required TResult Function(String error) failure,
  }) {
    return auntificatid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? auntificatid,
    TResult? Function()? unAuntificatid,
    TResult? Function(String error)? failure,
  }) {
    return auntificatid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? auntificatid,
    TResult Function()? unAuntificatid,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (auntificatid != null) {
      return auntificatid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Auntificatid value) auntificatid,
    required TResult Function(_UnAuntificatid value) unAuntificatid,
    required TResult Function(_Failure value) failure,
  }) {
    return auntificatid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Auntificatid value)? auntificatid,
    TResult? Function(_UnAuntificatid value)? unAuntificatid,
    TResult? Function(_Failure value)? failure,
  }) {
    return auntificatid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Auntificatid value)? auntificatid,
    TResult Function(_UnAuntificatid value)? unAuntificatid,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (auntificatid != null) {
      return auntificatid(this);
    }
    return orElse();
  }
}

abstract class _Auntificatid implements AuthState {
  const factory _Auntificatid() = _$AuntificatidImpl;
}

/// @nodoc
abstract class _$$UnAuntificatidImplCopyWith<$Res> {
  factory _$$UnAuntificatidImplCopyWith(_$UnAuntificatidImpl value,
          $Res Function(_$UnAuntificatidImpl) then) =
      __$$UnAuntificatidImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuntificatidImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnAuntificatidImpl>
    implements _$$UnAuntificatidImplCopyWith<$Res> {
  __$$UnAuntificatidImplCopyWithImpl(
      _$UnAuntificatidImpl _value, $Res Function(_$UnAuntificatidImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnAuntificatidImpl implements _UnAuntificatid {
  const _$UnAuntificatidImpl();

  @override
  String toString() {
    return 'AuthState.unAuntificatid()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuntificatidImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() auntificatid,
    required TResult Function() unAuntificatid,
    required TResult Function(String error) failure,
  }) {
    return unAuntificatid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? auntificatid,
    TResult? Function()? unAuntificatid,
    TResult? Function(String error)? failure,
  }) {
    return unAuntificatid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? auntificatid,
    TResult Function()? unAuntificatid,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (unAuntificatid != null) {
      return unAuntificatid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Auntificatid value) auntificatid,
    required TResult Function(_UnAuntificatid value) unAuntificatid,
    required TResult Function(_Failure value) failure,
  }) {
    return unAuntificatid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Auntificatid value)? auntificatid,
    TResult? Function(_UnAuntificatid value)? unAuntificatid,
    TResult? Function(_Failure value)? failure,
  }) {
    return unAuntificatid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Auntificatid value)? auntificatid,
    TResult Function(_UnAuntificatid value)? unAuntificatid,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (unAuntificatid != null) {
      return unAuntificatid(this);
    }
    return orElse();
  }
}

abstract class _UnAuntificatid implements AuthState {
  const factory _UnAuntificatid() = _$UnAuntificatidImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() auntificatid,
    required TResult Function() unAuntificatid,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? auntificatid,
    TResult? Function()? unAuntificatid,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? auntificatid,
    TResult Function()? unAuntificatid,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Auntificatid value) auntificatid,
    required TResult Function(_UnAuntificatid value) unAuntificatid,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Auntificatid value)? auntificatid,
    TResult? Function(_UnAuntificatid value)? unAuntificatid,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Auntificatid value)? auntificatid,
    TResult Function(_UnAuntificatid value)? unAuntificatid,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AuthState {
  const factory _Failure({required final String error}) = _$FailureImpl;

  String get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
