import 'package:usermanage_app/constant.dart';
import 'package:usermanage_app/controllers/home_main/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:usermanage_app/resources/app_colors.dart';
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

  @override
  void initState() {
    controller.fetchUsersModel();

    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        controller.fetchUsersModel();
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScaffold(
          isShowAppBar : true,
            title: APP_NAME,
            appBarContent: APP_NAME,
          action: showAction(),
          body: bodyContent(),
        ),
        Positioned(
          bottom: 20,
            child: Container(
          height: Get.height * 0.22,
          width: Get.width,
          decoration: BoxDecoration(
            color: AppColors.secondaryColor
          ),
        )),
        controller.showCenterLoading(context, Colors.transparent),
      ],
    );
  }

  Widget showAction(){
    return IconButton(onPressed: (){
      controller.retry = true;
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
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(user.name),
              subtitle: Text(user.email),
              onTap: () {
                controller.userId.value = user.id;
                Get.to(() =>
                    UserProfileScreen(userId: user.id));
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