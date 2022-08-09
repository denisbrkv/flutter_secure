import 'package:shared_preferences/shared_preferences.dart';

class ExampleWidgetModel {
  final _prefs = SharedPreferences.getInstance();

  Future<void> readName() async {
    final prefs = await _prefs;
    final name = prefs.getString('name key');
    print(name);
  }

  Future<void> setName() async {
    final prefs = await _prefs;
    prefs.setString('name key', 'Иван');
  }

  Future<void> readToken() async {}

  Future<void> setToken() async {}
}
