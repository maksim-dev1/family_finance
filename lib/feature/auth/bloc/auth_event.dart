part of 'auth_bloc.dart';

/// События аутентификации, используемые в [AuthBloc].
///
/// Возможные события:
/// - [AuthEvent.checkAuth] – проверка текущего статуса аутентификации.
/// - [AuthEvent.registration] – регистрация нового пользователя.
/// - [AuthEvent.login] – вход пользователя.
/// - [AuthEvent.verify] – верификация кода подтверждения.
/// - [AuthEvent.logout] – выход пользователя из системы.
@freezed
class AuthEvent with _$AuthEvent {
  /// Событие для проверки текущего статуса аутентификации.
  const factory AuthEvent.checkAuth() = _CheckAuth;
  
  /// Событие регистрации нового пользователя.
  ///
  /// - [authRegisterRequest] – данные для регистрации в виде [AuthRegisterRequestEntity].
  const factory AuthEvent.registration({required AuthRegisterRequestEntity authRegisterRequest}) = _Registration;
  
  /// Событие входа пользователя.
  ///
  /// - [authLoginRequest] – данные для входа (например, email или логин).
  const factory AuthEvent.login({required String authLoginRequest}) = _Login;
  
  /// Событие верификации кода подтверждения.
  ///
  /// - [authVerifeRequest] – данные верификации в виде [AuthVerifeRequestEntity].
  const factory AuthEvent.verify({required AuthVerifeRequestEntity authVerifeRequest}) = _Verify;
  
  /// Событие для выхода пользователя из системы.
  const factory AuthEvent.logout() = _Logout;
}