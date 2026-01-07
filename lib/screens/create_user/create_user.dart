import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:usermanage_app/controllers/user_controller/create_user_controller.dart';
import 'package:usermanage_app/widgtes/custom_scaffold.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_dimen.dart';
import '../../resources/app_fonts.dart';

class CreateUserScreen extends StatefulWidget {
  const CreateUserScreen({super.key});

  @override
  State<CreateUserScreen> createState() => _CreateUserScreenState();
}

class _CreateUserScreenState extends State<CreateUserScreen> {
  CreateUserController controller = Get.find();

  InputDecoration inputStyle(String hint) {
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
    return Obx(() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gender',
          style: TextStyle(color: AppColors.textColor, fontFamily: AppFont.font, fontSize: AppDimen.textSizeH2, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: RadioListTile(
                title: Text('Male', style: TextStyle(color: AppColors.textColor, fontFamily: AppFont.font, fontWeight: FontWeight.w500)),
                value: 'Male',
                groupValue: controller.gender.value,
                activeColor: AppColors.secondaryColor,
                onChanged: (v) => controller.gender.value = v!,
              ),
            ),
            Expanded(
              child: RadioListTile(
                title: Text('Female',style: TextStyle(color: AppColors.textColor, fontFamily: AppFont.font, fontWeight: FontWeight.w500)),
                value: 'Female',
                activeColor: AppColors.secondaryColor,
                groupValue: controller.gender.value,
                onChanged: (v) => controller.gender.value = v!,
              ),
            ),
          ],
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
        ()=> Stack(
        children: [
          CustomScaffold(
            isShowAppBar: true,
            title: "Create User",
            body: controller.isLoading.value ? SizedBox(): showBodyContent()
          ),

          controller.showCenterLoading(context, Colors.transparent)
        ],
      ),
    );
  }

  Widget showBodyContent(){
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Text("Name", style: TextStyle(color: AppColors.textColor, fontFamily: AppFont.font, fontSize: AppDimen.textSizeH2, fontWeight: FontWeight.w600),),
          const SizedBox(height: 16),

          TextField(
            onChanged: (v) => controller.name.value = v,
            cursorColor: AppColors.primaryColor,
            decoration: inputStyle('Name'),
            style: TextStyle(color: AppColors.black),
          ),
          const SizedBox(height: 16),
          Text("Email", style: TextStyle(color: AppColors.textColor, fontFamily: AppFont.font, fontSize: AppDimen.textSizeH2, fontWeight: FontWeight.w600),),
          const SizedBox(height: 16),

          TextField(
            onChanged: (v) => controller.email.value = v,
            keyboardType: TextInputType.emailAddress,
            cursorColor: AppColors.primaryColor,
            decoration: inputStyle('Email'),
            style: TextStyle(color: AppColors.black),
          ),
          const SizedBox(height: 16),
          Text("Age", style: TextStyle(color: AppColors.textColor, fontFamily: AppFont.font, fontSize: AppDimen.textSizeH2, fontWeight: FontWeight.w600),),
          const SizedBox(height: 16),

          TextField(
            onChanged: (v) => controller.age.value = v,
            keyboardType: TextInputType.number,
            cursorColor: AppColors.primaryColor,
            decoration: inputStyle('Age'),
            style: TextStyle(color: AppColors.black),
          ),
          const SizedBox(height: 16),

          genderSelector(),
          const SizedBox(height: 30),

          Obx(() => SizedBox(
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
                    : controller.createUser,
                child: Center(
                  child: Text(
                    'Create User',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
          ),),
        ],
      ),
    );
  }
}
