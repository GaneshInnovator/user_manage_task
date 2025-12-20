import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/app_assets.dart';
import '../home_main/product_page.dart';

class SplashScreen  extends StatefulWidget {
  const SplashScreen({Key? key}) :super(key:key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(
      const Duration(seconds: 2),
          () {
        Get.to(() => ProductPage());
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

  @override
  showDialog() {}
}
