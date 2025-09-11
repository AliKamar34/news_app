import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageHelper {
  static const _storage = FlutterSecureStorage();

  static Future<void> saveDate(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  static Future<String?> readData(String key) async {
    return await _storage.read(key: key);
  }
}
