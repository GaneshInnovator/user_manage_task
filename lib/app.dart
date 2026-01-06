import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:usermanage_app/binding/main_binding.dart';
import 'package:usermanage_app/pref/app_preference.dart';
import 'package:usermanage_app/resources/app_assets.dart';
import 'package:usermanage_app/resources/app_colors.dart';
import 'package:usermanage_app/resources/app_dimen.dart';
import 'package:usermanage_app/resources/app_fonts.dart';
import 'package:intl/intl.dart';

import 'package:usermanage_app/screens/splash/splash.dart';

import 'constant.dart';

class App  extends StatelessWidget {
  static final App _instance = App._internal();

  App._internal();

  final AppPreference appPreference = Get.find();


  factory App() {
    Get.lazyPut(()=>AppPreference());
    if(Platform.isIOS) {
      Get.rootController.defaultPopGesture = false;
    }
    return _instance;
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: APP_NAME,
      defaultTransition: Transition.leftToRight,
      home: const SplashScreen(),
      initialBinding: MainBinding(),
    );
  }

  showAppbar(BuildContext context, [Widget? widget,Color? bgColor, Function? function, String? title, Widget? action, bool? isBackButtonNeeded , PreferredSizeWidget? bottomWidget, bool? isTitleBold=true]) {
    return AppBar(
        toolbarHeight: bottomWidget !=null ? 80.0 :70.0,
        backgroundColor: AppColors.screenBGColor,
        leadingWidth: 80,
        forceMaterialTransparency: true,
        leading: Container(
            margin:  EdgeInsetsDirectional.only(start: 20.0, top:bottomWidget !=null ? 10.0:0.0),
            alignment: AlignmentDirectional.centerStart,
            child: widget ?? (isBackButtonNeeded!
                ? InkWell(
              onTap: () {
                if (function != null) {
                  function();
                } else {
                  Get.back();
                }
              },
              child: Container(
                  width: 40,
                  height: 40,

                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.white,
                          offset: const Offset(0.0, 1.0), //(x,y)
                          blurRadius: 10.0,
                          spreadRadius: 1),
                    ],
                  ),
                  child: SizedBox(
                      width: 20,
                      height: 20,
                      child: SvgPicture.asset(Bidi.isRtlLanguage(Get.locale?.languageCode)
                          ? rightArrowSvg:arrowBackSvg,
                        colorFilter: ColorFilter.mode(AppColors.iconBgColor, BlendMode.srcIn),))
              ),
            )
                : Container())
        ),
        title: (title != null)
            ? Text(title,
            style: TextStyle(
                fontSize: AppDimen.textSizeH4,
                fontFamily: AppFont.font,
                color: AppColors.textColor,
                fontWeight: isTitleBold==true? FontWeight.bold : FontWeight.normal))
            : Container(),
        elevation: 0,
        titleTextStyle: TextStyle(color: AppColors.textColor, fontFamily: AppFont.font),
        centerTitle: true,
        bottom: bottomWidget ?? const PreferredSize( preferredSize: Size.fromHeight(0),child: SizedBox(height: 0,),),
        actions: <Widget>[
          (action != null)
              ? action
              : Container(),
        ], systemOverlayStyle: SystemUiOverlayStyle.light);
  }

}
