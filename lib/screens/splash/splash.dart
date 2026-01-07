import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app.dart';
import '../../constant.dart';
import '../../resources/app_assets.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_style.dart';
import '../home_main/home.dart';

class SplashScreen  extends StatefulWidget {
  const SplashScreen({Key? key}) :super(key:key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
          () {
            getTheme();
        Get.offAll(() => HomePage());
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Image(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      image: const AssetImage(drawableSplash),
      fit: BoxFit.cover,
    );
  }

  getTheme(){
    if(App().appPreference.themeValue == "auto"){
      themeValue.value = "auto";
      final brightness = MediaQuery.of(context).platformBrightness;
      if (brightness == Brightness.dark) {
        AppStyles.darkTheme();
        AppColors().changeToDark();
        AppImages().changeToDarkImage();
      } else {
        AppStyles.lightTheme();
        AppColors().changeToLight();
        AppImages().changeToLightImage();
      }
    }else if(App().appPreference.themeValue == "light"){
      themeValue.value = "light";
      AppStyles.lightTheme();
      AppColors().changeToLight();
      AppImages().changeToLightImage();
    }else{
      themeValue.value = "dark";
      AppStyles.darkTheme();
      AppColors().changeToDark();
      AppImages().changeToDarkImage();
    }
    Get.forceAppUpdate();
  }

  @override
  showDialog() {}
}
