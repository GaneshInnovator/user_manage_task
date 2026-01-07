
import 'dart:convert';

import 'package:flutter/cupertino.dart';
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
  var deleteResult = false;
  var updateResult = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController ageController = TextEditingController();
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

        nameController.text = data['name'].toString();
        emailController.text = data['email'].toString();
        ageController.text = data['age'].toString();
      }
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> updateUser(String id, BuildContext context) async {
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
        updateResult = true;
        showSnackBar('User Updated Successfully', context);
      }else{
        showSnackBar('Something went wrong!', context);
      }
    } on Exception catch (_){
      showSnackBar('Please check your network connection.', context);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> deleteUser(String id, BuildContext context) async {
    try {
      isLoading.value = true;

      final response = await http.delete(
        Uri.parse(
            '$deleteUserById?id=$id'),
      );

      if (response.statusCode == 200) {
        deleteResult = true;
        Get.back(result: deleteResult);
        showSnackBar('User removed successfully', context);
      }else{
        deleteResult = false;
        showSnackBar('Something went wrong!', context);
      }
    }on Exception catch (_){
      showSnackBar('Please check your network connection.', context);
    } finally {
      isLoading.value = false;
    }
  }
}
