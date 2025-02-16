import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenStorage {
  // Инициализация FlutterSecureStorage
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  // Сохранене токенов
   Future<void> saveTokens(String accessToken, String refreshToken) async {
    await _storage.write(key: 'access_token', value: accessToken);
    await _storage.write(key: 'refresh_token', value: refreshToken);
  }

  // Получение токенов
  Future<String?> getAccessToken() async {
    return await _storage.read(key: 'access_token');
  }

  // Получение refresh токена
  Future<String?> getRefreshToken() async {
    return await _storage.read(key: 'refresh_token');
  }

  // Удаление токенов 
  Future<void> clearTokens() async {
    await _storage.delete(key: 'access_token');
    await _storage.delete(key: 'refresh_token');
  }
}