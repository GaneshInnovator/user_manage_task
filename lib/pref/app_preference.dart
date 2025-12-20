import 'package:get_secure_storage/get_secure_storage.dart';

class AppPreference {
  var pref = GetSecureStorage();

  @override
  String? get authToken => pref.read("authToken") ?? "";

  @override
  set authToken(String? _authToken) {
    pref.write("authToken", _authToken);
  }

  @override
  String? get userID => pref.read("userID") ?? "";

  @override
  set userID(String? userID) {
    pref.write("userID", userID);
  }
}