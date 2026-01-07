import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../app.dart';
import '../../constant.dart';
import '../resources/app_colors.dart';

class CustomScaffold extends StatefulWidget {
  final Widget? body;
  final Widget? appBar;
  final Widget? action;
  final String? title;
  final Function? customAppBarFunction;
  final bool isShowAppBar;
  final bool isTitleBold;
  final bool isBackButtonNeeded;
  final String appBarContent;
  final bool resizeToAvoidBottomInset;
  final Color? backgroundColor;
  final ValueChanged<Map<String, dynamic>>? onChanged;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget? bottomNavigationBar;
  final PreferredSizeWidget? appBarBottomWidget;
  final Color? appBarBGColor;

  const CustomScaffold(
      {Key? key,
        this.appBar,
        this.title,
        this.action,
        this.isTitleBold = true,
        this.body,
        this.customAppBarFunction,
        this.isShowAppBar = false,
        this.appBarContent = "",
        this.onChanged,
        this.resizeToAvoidBottomInset = false,
        this.backgroundColor,
        this.isBackButtonNeeded = true,
        this.floatingActionButton,
        this.floatingActionButtonLocation,
        this.bottomNavigationBar,
        this.appBarBottomWidget,
        this.appBarBGColor = const Color(0xFFFFFFEF)})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CustomScaffoldState();
  }
}

class CustomScaffoldState extends State<CustomScaffold> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  BuildContext? scaffoldContext;
  Map<String, dynamic> returnMap = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: baseController.isDarkMode() ? Brightness.light: Brightness.dark,
      ),
    );
    return Container(
            color: AppColors.screenBGColor,
            child: SafeArea(
              top: true,
              child: PopScope(
                canPop: widget.customAppBarFunction == null,
                onPopInvokedWithResult: (didPop, result){
                  if(!didPop){
                    if (widget.customAppBarFunction != null) {
                      widget.customAppBarFunction!();
                    }
                  }
                },
                child: Scaffold(
                  key: _scaffoldKey,
                  bottomNavigationBar: widget.bottomNavigationBar,
                  appBar: widget.isShowAppBar
                      ? App().showAppbar(
                      context,
                      widget.appBar,
                      widget.appBarBGColor,
                      widget.customAppBarFunction,
                      widget.title,
                      widget.action,
                      widget.isBackButtonNeeded,
                      widget.appBarBottomWidget,
                      widget.isTitleBold)
                      : const PreferredSize(
                    preferredSize: Size(0, 0),
                    child: SizedBox(
                      height: 0,
                      width: 0,
                    ),
                  ),
                  resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
                  backgroundColor: widget.backgroundColor ?? AppColors.screenBGColor,
                  body: Builder(
                    builder: (BuildContext ctx) {
                      scaffoldContext = ctx;
                      _publishSelection("scaffoldcontext", scaffoldContext, "scaffoldkey", _scaffoldKey);
                      return SafeArea(
                        child: Stack(
                          children: <Widget>[
                            widget.body!,
                          ],
                        ),
                      );
                    },
                  ),
                  floatingActionButton: widget.floatingActionButton ?? SizedBox.shrink(),
                  floatingActionButtonLocation: widget.floatingActionButtonLocation ?? FloatingActionButtonLocation.centerDocked,
                ),
              ),
            ),
          );
  }

  void _publishSelection(String key, dynamic value, String key1, dynamic value1) {
    returnMap[key] = value;
    returnMap[key1] = value1;

    if (widget.onChanged != null) {
      widget.onChanged!(returnMap);
    }
  }
}
