import 'package:ecompro_app/controllers/home_main/product_controller.dart';
import 'package:get/get.dart';

import '../pref/app_preference.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppPreference>(() => AppPreference(), fenix: true);
    Get.lazyPut<ProductController>(() => ProductController(), fenix: true);
  }
}