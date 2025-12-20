const String drawableSplash = 'res/drawable/splash.png';
const String rightArrowSvg = "res/drawable/right_arrow.svg";
const String arrowBackSvg = "res/drawable/arrow_back.svg";

class AppImages {

  static String lottieloader = "assets/lottie/loader.json";

  changeToLightImage() {
    lottieloader = "assets/lottie/loader.json";
  }

  changeToDarkImage() {
    lottieloader = "assets/lottie/loader-dark.json";
  }
}
