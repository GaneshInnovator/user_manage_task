import 'package:kidsflutter_app/controllers/base_controller.dart';

import 'package:flutter/material.dart';
import 'package:kidsflutter_app/graphql/user_login/__generated__/userLogin.data.gql.dart';
import 'package:kidsflutter_app/graphql/user_login/__generated__/userLogin.req.gql.dart';

import '../../config/client.dart';

class LoginController extends BaseController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  loginUser(context) {
    final params = GLoginUserReq((b) => b
      ..vars.email = emailController.text.trim()
      ..vars.password = passwordController.text.trim()
      ..vars.build());
    FerryLoggerClient.makeRequest(params).listen((res) async {
      try {
        if (res != null) {
          var response = res.data as GLoginUserData;
          if (response.loginUser.status == 200) {
            appPreference.authToken = response.loginUser.user?.auth ?? "";
            print("appPreference.authToken: ${appPreference.authToken}");
            showSnackBar(response.loginUser.message, context);
          } else if (response.loginUser?.status == 400) {
            showSnackBar(response.loginUser.message, context);
          } else {
            showSnackBar(response.loginUser.message, context);
          }
        } else {

        }
      } catch (e) {
        checkNetwork(context, () {
          loginUser(context);
        });
      }
    });
  }

}