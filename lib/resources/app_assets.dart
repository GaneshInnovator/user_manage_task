const String drawableSplash = 'res/drawable/splash.png';
const String rightArrowSvg = "res/drawable/right_arrow.svg";
const String arrowBackSvg = "res/drawable/arrow_back.svg";

class AppImages {

  static String lottieloader = "assets/lottie/loader.json";

  static String deleteSvg = "res/drawable/delete.svg";
  static String themeSettingsSvg = "res/drawable/settings.svg";

  changeToLightImage() {
    lottieloader = "assets/lottie/loader.json";
    deleteSvg = "res/drawable/delete.svg";
    themeSettingsSvg = "res/drawable/settings.svg";
  }

  changeToDarkImage() {
    lottieloader = "assets/lottie/loader-dark.json";
    themeSettingsSvg = "res/drawable/settings_dark.svg";
    deleteSvg = "res/drawable/delete_dark.svg";
  }
}
