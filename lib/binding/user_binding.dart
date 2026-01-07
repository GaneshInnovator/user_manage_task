import 'package:usermanage_app/controllers/home_main/home_controller.dart';
import 'package:get/get.dart';
import 'package:usermanage_app/controllers/user_controller/create_user_controller.dart';
import 'package:usermanage_app/controllers/user_controller/update_controller.dart';


class UserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateUserController>(() => CreateUserController(), fenix: true);
    Get.lazyPut<UpdateController>(() => UpdateController(), fenix: true);
  }
}