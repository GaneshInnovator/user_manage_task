import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../controllers/base_controller.dart';
import '../resources/app_colors.dart';

class InputDoneView extends GetView {
  late BaseController controller;

  InputDoneView(BaseController controller) {
    this.controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.keyboardColor,
      child: Align(
        alignment: controller.isDirectionRTL(context)
            ? Alignment.topLeft
            : Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.only(top: 4.0, bottom: 0.0),
          child: CupertinoButton(
            padding: const EdgeInsetsDirectional.only(end: 24.0, top: 0.0, bottom: 0.0),
            onPressed: () {
              FocusScope.of(context).requestFocus(FocusNode());
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            child: Text("done".tr,
                style: TextStyle(
                    color: AppColors.textColor, fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
