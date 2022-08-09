import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class _SharedPreferencesKeys {
  static const nameKey = 'name_key';
}

abstract class _FlutterSecureStorageKeys {
  static const tokenKey = 'token';
}

class ExampleWidgetModel {
  final _prefs = SharedPreferences.getInstance();
  final _storage = FlutterSecureStorage();

  Future<void> readName() async {
    final prefs = await _prefs;
    final name = prefs.getString(_SharedPreferencesKeys.nameKey);
    print(name);
  }

  Future<void> setName() async {
    final prefs = await _prefs;
    prefs.setString(_SharedPreferencesKeys.nameKey, 'Иван');
  }

  Future<void> readToken() async {
    final token = await _storage.read(key: _FlutterSecureStorageKeys.tokenKey);
    print(token);
  }

  Future<void> setToken() async {
    final token = await _storage.write(
        key: _FlutterSecureStorageKeys.tokenKey,
        value: 'fdgfdgdsfgcxz234234514sdgs');
  }
}
