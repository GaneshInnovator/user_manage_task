import 'package:get_secure_storage/get_secure_storage.dart';

class AppPreference {
  var pref = GetSecureStorage();

  @override
  String? get themeValue => pref.read("themeValue") ?? "auto";

  @override
  set themeValue(String? _themeValue) {
    pref.write("themeValue", _themeValue);
  }
}