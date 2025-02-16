part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuth() = _CheckAuth;
  const factory AuthEvent.registration({required AuthRegisterRequestEntity authRegisterRequest}) = _Registration;
  const factory AuthEvent.login({required AuthLoginRequestEntity authLoginRequest}) = _Login;
  const factory AuthEvent.verify({required AuthVerifeRequestEntity authVerifeRequest}) = _Verify;
  const factory AuthEvent.logout() = _Logout;
}