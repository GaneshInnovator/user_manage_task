import 'dart:async';

import 'package:usermanage_app/binding/user_binding.dart';
import 'package:usermanage_app/constant.dart';
import 'package:usermanage_app/controllers/home_main/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:usermanage_app/resources/app_colors.dart';
import 'package:usermanage_app/resources/app_dimen.dart';
import 'package:usermanage_app/resources/app_fonts.dart';
import 'package:usermanage_app/screens/create_user/create_user.dart';
import 'package:usermanage_app/widgtes/custom_container.dart';
import 'package:usermanage_app/widgtes/custom_scaffold.dart';

import '../../model/user_fetch_model.dart';
import '../update_user/update_user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = Get.find();
  final ScrollController scrollController = ScrollController();
  Timer? _scrollEndTimer;
  var showWidget = true.obs;

  @override
  void initState() {
    controller.fetchUsersModel();

    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        controller.fetchUsersModel();
      }

      _scrollEndTimer?.cancel();

      _scrollEndTimer = Timer(const Duration(milliseconds: 200), () {
          showWidget.value = true;
      });

        showWidget.value = false;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      ()=> Stack(
        children: [
          CustomScaffold(
            isShowAppBar : true,
              title: APP_NAME,
              appBarContent: APP_NAME,
            action: showAction(),
            body: bodyContent(),
          ),
          showBottomAdd(),
          controller.showCenterLoading(context, Colors.transparent),
        ],
      ),
    );
  }

  Widget showBottomAdd(){
    return Visibility(
      visible: showWidget.value && !controller.isLoading.value,
      child: Positioned(
        bottom: 25,
        left: 0,
        right: 0,
        child: Center(
            child: GestureDetector(
              onTap: (){
                Get.to(CreateUserScreen(), binding: UserBinding())?.then((val){
                  if(val == true){
                    controller.retry = true;
                    controller.hasMore.value = true;
                    controller.page = 1;
                    controller.fetchUsersModel();
                  }
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Container(
                  height: Get.height * 0.05,
                  width: Get.width * 0.24,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(26),
                  ),
                  child: Center(
                    child: Text(
                      "ADD",
                      style: TextStyle(
                          color: AppColors.constWhite,
                          fontSize: AppDimen.textSizeH4
                      ),
                    ),
                  ),
                ),
              ),
            )

        ),
      ),
    );
  }

  Widget showAction(){
    return IconButton(onPressed: (){
      controller.retry = true;
      controller.hasMore.value = true;
      controller.page = 1;
      controller.fetchUsersModel();
    }, icon: Icon(Icons.refresh_outlined));
  }
  
  Widget bodyContent(){
    return Obx(() {
      return ListView.builder(
        controller: scrollController,
        itemCount: controller.users.length + 1,
        itemBuilder: (context, index) {
          if (index == controller.users.length) {
            return const SizedBox();
          }

          final user = controller.users[index];

          return Card(
            elevation: 0,
            margin: const EdgeInsets.all(10),
            color: AppColors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22),
              side: BorderSide(
                color: Colors.grey.shade300,
                width: 1,
              ),
            ),

            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              trailing: Text(
                'View & update',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w600,
                  fontFamily: AppFont.font,
                  decorationColor: AppColors.secondaryColor,
                  fontSize: AppDimen.textSizeH1
                ),
              ),
              title: Text(
                user.name,
                style: TextStyle(fontWeight: FontWeight.w600, fontFamily: AppFont.font),
              ),
              subtitle: Text(user.email, style: TextStyle(fontWeight: FontWeight.w600, fontFamily: AppFont.font),),
              onTap: () {
                controller.userId.value = user.id;
                Get.to(() => UserProfileScreen(userId: user.id), binding: UserBinding());
              },
            ),
          );

        },
      );
    });
  }


  @override
  void dispose() {
    super.dispose();
  }
}