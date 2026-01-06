import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:usermanage_app/controllers/home_main/home_controller.dart';
import 'package:usermanage_app/resources/app_colors.dart';
import 'package:usermanage_app/widgtes/custom_scaffold.dart';

class UserProfileScreen extends StatefulWidget {
  final String userId;

  const UserProfileScreen({super.key, required this.userId});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  HomeController controller = Get.find();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.fetchUsersProfile();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        CustomScaffold(
            isShowAppBar: true,
            title: "User View",
            body: showBodycontent()
        ),
        controller.showCenterLoading(context, Colors.transparent)
      ],
    );
  }

  Widget showBodycontent(){
    return Obx(() {
      if (controller.isLoading.value) {
        return const SizedBox();
      }
      final user = controller.userProfile.value;
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user?.name ?? "",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall),
                const SizedBox(height: 10),
                Text('Gender: ${user?.gender}'),
                Text('Email: ${user
                    ?.email}'),
                Text('Age: ${user?.age}'),
              ],
            ),
          ),
        ),
      );
    });
  }


  @override
  void dispose() {
    super.dispose();
  }
}
