import 'package:kidsflutter_app/controllers/base_controller.dart';

import 'package:flutter/material.dart';
import 'package:kidsflutter_app/graphql/user_signup/__generated__/userRegister.data.gql.dart';
import 'package:kidsflutter_app/graphql/user_signup/__generated__/userRegister.req.gql.dart';

import '../../config/client.dart';

class SignupController extends BaseController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String userName = "";
  String childName = "";
  int childAge = 0;
  registerUser(context) {
    final params = GRegisterUserReq((b) => b
      ..vars.email = emailController.text.trim()
      ..vars.password = passwordController.text.trim()
      ..vars.childname= childName
      ..vars.name = userName
      ..vars.childage = childAge
      ..vars.build());
    FerryLoggerClient.makeRequest(params).listen((res) async {
      try {
        if (res != null) {
          var response = res.data as GRegisterUserData;
          if (response.registerUser.status == 200) {
            appPreference.authToken = response.registerUser?.user?.auth ?? "";
            showSnackBar(response.registerUser.message, context);
          } else if (response.registerUser?.status == 400) {
            showSnackBar(response.registerUser.message, context);
          } else {
            showSnackBar(response.registerUser.message, context);
          }
        } else {

        }
      } catch (e) {
        checkNetwork(context, () {
          registerUser(context);
        });
      }
    });
  }

}