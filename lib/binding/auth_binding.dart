import 'package:get/get.dart';
import 'package:kidsflutter_app/controllers/auth/login_controller.dart';
import 'package:kidsflutter_app/controllers/auth/signup_controller.dart';

import '../pref/app_preference.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppPreference>(() => AppPreference(), fenix: true);
    Get.lazyPut<LoginController>(() => LoginController(), fenix: true);
    Get.lazyPut<SignupController>(() => SignupController(), fenix: true);
  }
}