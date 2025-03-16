part of 'auth_bloc.dart';

/// Состояния аутентификации, используемые в [AuthBloc].
///
/// Возможные состояния:
/// - [AuthState.initial] – начальное состояние.
/// - [AuthState.loading] – состояние загрузки (выполняется запрос).
/// - [AuthState.auntificatid] – состояние, когда пользователь аутентифицирован.
/// - [AuthState.unAuntificatid] – состояние, когда пользователь не аутентифицирован.
/// - [AuthState.failure] – состояние ошибки с описанием [error].
@freezed
class AuthState with _$AuthState {
  /// Начальное состояние аутентификации.
  const factory AuthState.initial() = _Initial;
  
  /// Состояние загрузки при выполнении операций аутентификации.
  const factory AuthState.loading() = _Loading;
  
  /// Состояние, указывающее, что пользователь успешно аутентифицирован.
  const factory AuthState.auntificatid() = _Auntificatid;
  
  /// Состояние, указывающее, что пользователь не аутентифицирован.
  const factory AuthState.unAuntificatid() = _UnAuntificatid;
  
  /// Состояние ошибки аутентификации.
  ///
  /// - [error] – описание возникшей ошибки.
  const factory AuthState.failure({required String error}) = _Failure;
}