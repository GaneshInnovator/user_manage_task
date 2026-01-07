import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:usermanage_app/controllers/base_controller.dart';

import '../../constant.dart';

class CreateUserController extends BaseController {
  final name = ''.obs;
  final email = ''.obs;
  final age = ''.obs;
  final gender = 'Male'.obs;
  var result = false;


  Future<void> createUser() async {
    if (name.value.isEmpty ||
        email.value.isEmpty ||
        age.value.isEmpty) {
      showSnackBar("All fields are required", Get.context);
      return;
    }

    try {
      isLoading.value = true;

      final response = await http.post(
        Uri.parse('${createUserUrl}'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "name": name.value,
          "email": email.value,
          "age": int.parse(age.value),
          "gender": gender.value,
        }),
      );

      if (response.statusCode == 201) {
        result = true;
        showSnackBar("User created successfully", Get.context);
        clearFields();
      } else {
        result = false;
        showSnackBar("Unable to create user", Get.context);
      }
    } on Exception catch (_){
      result = false;
      showSnackBar('Please check your network connection.', Get.context);
    } finally {
      isLoading.value = false;
    }
  }

  void clearFields() {
    name.value = '';
    email.value = '';
    age.value = '';
    gender.value = 'Male';
    Get.back(result: result);
  }
}
