import 'package:get_storage/get_storage.dart';

class LocalStorage {
  static final LocalStorage _instance = LocalStorage._internal();
  factory LocalStorage() {
    return _instance;
  }
  LocalStorage._internal();

  final _storage = GetStorage();

  //Generic metrhod to save Data

  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  //Generic metrhod to read Data

  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  //Clear all Data in storage
  Future<void> clearAll()async{
    await _storage.erase();
  }

  //Generic metrhod to remove Data
  Future<void> removeData(String key)async{
    await _storage.remove(key);
  }
}
