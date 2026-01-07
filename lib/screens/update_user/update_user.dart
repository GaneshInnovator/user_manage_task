import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:usermanage_app/constant.dart';
import 'package:usermanage_app/controllers/user_controller/update_controller.dart';
import 'package:usermanage_app/resources/app_assets.dart';
import 'package:usermanage_app/resources/app_colors.dart';
import 'package:usermanage_app/resources/app_dimen.dart';
import 'package:usermanage_app/resources/app_fonts.dart';
import 'package:usermanage_app/widgtes/custom_scaffold.dart';

class UserProfileScreen extends StatefulWidget {
  final String userId;

  const UserProfileScreen({super.key, required this.userId});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final UpdateController controller = Get.find();


  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.fetchUsersProfile(widget.userId);
    });
    super.initState();
  }
  @override
  void dispose() {
    controller.deleteResult = false;
    controller.updateResult = false;
    super.dispose();
  }

  InputDecoration fieldStyle(String hint) {
    return InputDecoration(
      hintText: hint,

      floatingLabelBehavior: FloatingLabelBehavior.never,

      filled: true,
      fillColor: AppColors.white,

      contentPadding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 16,
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide:  BorderSide(
          color: AppColors.black,
          width: 1.0,
        ),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide:  BorderSide(
          color: AppColors.black,
          width: 1.0,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide.none,
      ),
    );
  }


  Widget genderSelector() {
    return Obx(() => Row(
      children: ['Male', 'Female'].map((g) {
        return Expanded(
          child: RadioListTile(
            title: Text(g, style: TextStyle(color: AppColors.textColor, fontFamily: AppFont.font, fontWeight: FontWeight.w500)),
            value: g,
            groupValue: controller.gender.value,
              activeColor: AppColors.secondaryColor,
            onChanged: (v) => controller.gender.value = v!,
          ),
        );
      }).toList(),
    ));
  }

  Widget actionButtons(String id) {
    return Obx(() => Column(
      children: [
      SizedBox(
      width: double.infinity,
      height: 50,
      child: Material(
        color: controller.isLoading.value
            ? Colors.grey
            : AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(28),
          onTap: controller.isLoading.value
              ? null
              : () => controller.updateUser(id, context),
          child: Center(
            child: Text(
              'Update User',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
          ),
        ),
      ),
    ),

        const SizedBox(height: 12),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.primaryColor,

              side: BorderSide(
                color: AppColors.primaryColor,
                width: 2.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14), // 🔹 Border radius
              ),
            ),
            onPressed: () => showDeleteConfirm(id),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Delete User',
                  style: TextStyle(fontWeight: FontWeight.w600,
                    fontSize: 17,),
                ),
              ],
            ),
          ),
        ),

      ],
    ));
  }

  void showDeleteConfirm(String id) {
    Get.dialog(
        Obx(
          ()=> themeValue.value!= null? AlertDialog(
            backgroundColor: AppColors.white,
                title:  Text('Delete User', style: TextStyle(color: AppColors.black),),
                content:  Text('Are you sure you want to permanently delete this user ?', style: TextStyle(color: AppColors.black)),
                actions: [
          TextButton(onPressed: Get.back, child: Text('Cancel', style: TextStyle(color: AppColors.secondaryColor),)),
          TextButton(
            onPressed: () {
              Get.back();
              controller.deleteUser(id, context);
            },
            child: Text('Delete',
                style: TextStyle(color: AppColors.primaryColor)),
          ),
                ],
              ): SizedBox.shrink(),
        ));
  }

  Widget showAction(){

    return Padding(
      padding: const EdgeInsets.only(right: 18.0),
      child: GestureDetector(
        onTap: (){
          showDeleteConfirm(widget.userId);
        },
        child: SvgPicture.asset(AppImages.deleteSvg,
          height: 24,
          width: 24,),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScaffold(
          isShowAppBar: true,
          title: "User Profile",
          action: showAction(),
          customAppBarFunction: (){
            Get.back(result: controller.updateResult);
          },
          body: showBodyContent()
        ),
        controller.showCenterLoading(context, Colors.transparent)
      ],
    );
  }

  Widget showBodyContent(){
    return Obx(() {
      if (controller.isLoading.value) return const SizedBox();

      return SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name", style: TextStyle(color: AppColors.textColor, fontFamily: AppFont.font, fontSize: AppDimen.textSizeH2, fontWeight: FontWeight.w600),),
            const SizedBox(height: 14),
            TextField(
              controller: controller.nameController,
              onChanged: (v) => controller.name.value = v,
              cursorColor: AppColors.primaryColor,
              style: TextStyle(color: AppColors.black),
              decoration: fieldStyle('Name'),
            ),

            const SizedBox(height: 14),
            Text("Email", style: TextStyle(color: AppColors.textColor, fontFamily: AppFont.font, fontSize: AppDimen.textSizeH2, fontWeight: FontWeight.w600),),
            const SizedBox(height: 14),

            TextField(
              controller: controller.emailController,
              onChanged: (v) => controller.email.value = v,
              cursorColor: AppColors.primaryColor,
              style: TextStyle(color: AppColors.black),
              decoration: fieldStyle('Email'),
            ),
            const SizedBox(height: 14),
            Text("Age", style: TextStyle(color: AppColors.textColor, fontFamily: AppFont.font, fontSize: AppDimen.textSizeH2, fontWeight: FontWeight.w600),),
            const SizedBox(height: 14),

            TextField(
              controller: controller.ageController,
              keyboardType: TextInputType.number,
              cursorColor: AppColors.primaryColor,
              style: TextStyle(color: AppColors.black),
              onChanged: (v) => controller.age.value = v,
              decoration: fieldStyle('Age'),

            ),
            const SizedBox(height: 14),
            Text("Gender", style: TextStyle(color: AppColors.textColor, fontFamily: AppFont.font, fontSize: AppDimen.textSizeH2, fontWeight: FontWeight.w600),),
            const SizedBox(height: 14),

            genderSelector(),
            const SizedBox(height: 30),

            actionButtons(widget.userId),
          ],
        ),
      );
    });
  }
}

