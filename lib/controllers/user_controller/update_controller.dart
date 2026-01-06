
import 'dart:convert';

import 'package:get/get.dart';
import 'package:usermanage_app/constant.dart';
import 'package:usermanage_app/controllers/base_controller.dart';

import '../../model/user_fetch_model.dart';

import 'package:http/http.dart' as http;

class UpdateController extends BaseController {

  final userProfile = Rxn<UserModel>();

  final name = ''.obs;
  final email = ''.obs;
  final age = ''.obs;
  final gender = ''.obs;

  Future<void> fetchUsersProfile(String userId) async {
    try {
      isLoading.value = true;

      final response = await http.get(
        Uri.parse(
            '$getALLUsers?id=$userId'),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        userProfile.value = UserModel.fromJson(data);

        name.value = data['name'];
        email.value = data['email'];
        age.value = data['age'].toString();
        gender.value = data['gender'];
      }
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> updateUser(String id) async {
    try {
      isLoading.value = true;

      final response = await http.put(
        Uri.parse('$updateUserById'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "id": id,
          "name": name.value,
          "email": email.value,
          "age": int.parse(age.value),
          "gender": gender.value,
        }),
      );

      if (response.statusCode == 200) {
        Get.snackbar('Success', 'User updated');
      }
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> deleteUser(String id) async {
    try {
      isLoading.value = true;

      final response = await http.delete(
        Uri.parse(
            '$deleteUserById?id=$id'),
      );

      if (response.statusCode == 200) {
        Get.back();
        Get.snackbar('Deleted', 'User removed successfully');
      }
    } finally {
      isLoading.value = false;
    }
  }
}
