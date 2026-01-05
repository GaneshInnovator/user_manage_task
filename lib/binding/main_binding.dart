import 'package:usermanage_app/controllers/home_main/home_controller.dart';
import 'package:get/get.dart';

import '../pref/app_preference.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppPreference>(() => AppPreference(), fenix: true);
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
  }
}