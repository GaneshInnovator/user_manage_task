import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:usermanage_app/constant.dart';

import '../app.dart';
import '../resources/app_assets.dart';
import '../resources/app_colors.dart';
import '../resources/app_fonts.dart';
import '../resources/app_style.dart';
import '../utils/lottie_delegates.dart';
import 'package:intl/intl.dart';

class BaseController extends FullLifeCycleController with FullLifeCycleMixin {
  var isLoading = false.obs;

  final Connectivity _connectivity = Connectivity();


  hideKeyBoard() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }

  hideSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }

  showSnackBar(String msg, context) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(
        backgroundColor: AppColors.black,
        content: Text(msg,
            style: TextStyle(fontFamily: AppFont.font, color: AppColors.white)),
        duration: const Duration(milliseconds: 2000),
      ));
  }


  showDeleteSnackBar(String msg, context) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(
        backgroundColor: AppColors.black,
        content: Text(msg,
            style: TextStyle(fontFamily: AppFont.font, color: AppColors.white)),
        duration: const Duration(seconds: 4),
      ));
  }


  showSnackBarWithRetry(String msg, Function calledFunction, context) {
    Get.showSnackbar(GetSnackBar(
      mainButton: InkWell(
          onTap: () {
            isLoading.value = true;
            if (Get.isSnackbarOpen == true) {
              Get.back();
            }
            checkNetwork(context, calledFunction);
          },
          child: Padding(
            padding: EdgeInsetsDirectional.only(start: 20, end: 20),
            child: Text(
              "retry".tr,
              style: TextStyle(color: AppColors.constWhite),
            ),
          )),
      message: msg,
      duration: const Duration(days: 1),
      animationDuration: const Duration(milliseconds: 200),
    ));
  }

  showToast(String msg) {
    Fluttertoast.showToast(
      msg: msg.tr,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: AppColors.constWhite,
      textColor: AppColors.textColor,
      fontSize: 16.0,
    );
  }

  isValidEmail(String email) {
    Pattern pattern = r'[A-Z0-9a-z._%+-]+@[A-Za-z0-9-]+(\.[A-Za-z]{2,6}){1,3}';
    RegExp regex = RegExp(pattern.toString());
    return regex.hasMatch(email);
  }

  checkNetwork(context, Function calledFunction) async {
    var connectivityResult;
    try {
      connectivityResult = await (_connectivity.checkConnectivity());
      if (connectivityResult == ConnectivityResult.none) {
        isLoading.value = false;
        if (Get.isSnackbarOpen == true) {
          Get.back();
        }
        showSnackBarWithRetry("you're offline".tr, calledFunction, context);
      } else {
        hideSnackBar(context);
        if (Get.isSnackbarOpen == true) {
          Get.back();
        }
        calledFunction();
      }
    } on Exception catch (e) {
      print(e);
    }
  }


  Widget showCenterLoading(context, Color? color, [loadingFile, Size]) {
    return Obx(
        ()=> isLoading.value? Container(
        width: Size ?? MediaQuery.of(context).size.width,
        height: Size ?? MediaQuery.of(context).size.height,
        color: color ?? Colors.transparent,
        child: Center(
          child: SizedBox(
              width: Size ?? 150,
              height: Size ?? 150,
              child: Lottie.asset(
                loadingFile ?? AppImages.lottieloader,
                delegates: getLottieDelegates(loadingFile ?? AppImages.lottieloader),
              )),
        ),
      ): SizedBox.shrink(),
    );
  }

  String calculateHours(double duration) {
    duration = double.parse(duration.toStringAsFixed(2));
    if (duration >= 60) {
      int totalHour = (duration / 60).floor();
      int totalMin = (duration % 60).floor();
      return '$totalHour h $totalMin m';
    } else if (duration >= 1 && duration < 60) {
      int totalMin = duration.floor();
      double totalSec = duration - totalMin;
      int totalSecInt = (totalSec * 60).floor();
      return '$totalMin m $totalSecInt s';
    } else {
      int totalSec = (duration * 60).floor();
      return '$totalSec s';
    }
  }


  String getIntegerNumber(String? inputNum) {
    String? outputNum = "";
    if (!inputNum!.contains(".")) {
      outputNum = inputNum;
    } else {
      List<String> splitValue = inputNum.split(".");
      if (splitValue[1] == "0" || int.parse(splitValue[1]) == 0) {
        outputNum = splitValue[0];
      } else if (int.parse(splitValue[1]) >= 0) {
        outputNum = double.parse(inputNum).toStringAsFixed(2);
      }
    }
    return outputNum;
  }


  DateTime getDateFromTimeStamp(int timeStamp) {
    var date = DateTime.fromMillisecondsSinceEpoch(timeStamp);
    return date;
  }

  bool isDirectionRTL(BuildContext context) {
    return Bidi.isRtlLanguage(Get.locale?.languageCode);
  }

  bool isDarkMode(){
    final brightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    return (brightness == Brightness.dark && App().appPreference.themeValue == "auto") || App().appPreference.themeValue == "dark";
  }

  @override
  void didChangePlatformBrightness() {
    if (themeValue.value == "auto") {
      final Brightness brightness =
          WidgetsBinding.instance.platformDispatcher.platformBrightness;
      if (brightness == Brightness.dark) {
        AppStyles.darkTheme();
        AppColors().changeToDark();
        AppImages().changeToDarkImage();
      } else {
        AppStyles.lightTheme();
        AppColors().changeToLight();
        AppImages().changeToLightImage();
      }
      Get.forceAppUpdate();
    }
  }

  @override
  void onDetached() {}

  @override
  void onInactive() {}

  @override
  void onPaused() {}

  @override
  void onResumed() {}

  @override
  void onHidden() {
    // TODO: implement onHidden
  }
}
