import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:usermanage_app/controllers/home_main/home_controller.dart';
import 'package:usermanage_app/controllers/user_controller/update_controller.dart';
import 'package:usermanage_app/resources/app_colors.dart';
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

  InputDecoration fieldStyle(String label) {
    return InputDecoration(
      labelText: label,
      filled: true,
      fillColor: Colors.grey.shade100,
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
            title: Text(g),
            value: g,
            groupValue: controller.gender.value,
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
          child: ElevatedButton(
            onPressed: controller.isLoading.value
                ? null
                : () => controller.updateUser(id),
            child: const Text('Update User'),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.red,
            ),
            onPressed: () => showDeleteConfirm(id),
            child: const Text('Delete User'),
          ),
        ),
      ],
    ));
  }

  void showDeleteConfirm(String id) {
    Get.dialog(AlertDialog(
      title: const Text('Delete User'),
      content: const Text('Are you sure? This action cannot be undone.'),
      actions: [
        TextButton(onPressed: Get.back, child: const Text('Cancel')),
        TextButton(
          onPressed: () {
            Get.back();
            controller.deleteUser(id);
          },
          child: const Text('Delete',
              style: TextStyle(color: Colors.red)),
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScaffold(
          isShowAppBar: true,
          title: "User Profile",
          body: Obx(() {
            if (controller.isLoading.value) return const SizedBox();

            return SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    controller: TextEditingController(
                        text: controller.name.value),
                    onChanged: (v) => controller.name.value = v,
                    decoration: fieldStyle('Name'),
                  ),
                  const SizedBox(height: 14),

                  TextField(
                    controller: TextEditingController(
                        text: controller.email.value),
                    onChanged: (v) => controller.email.value = v,
                    decoration: fieldStyle('Email'),
                  ),
                  const SizedBox(height: 14),

                  TextField(
                    controller: TextEditingController(
                        text: controller.age.value),
                    keyboardType: TextInputType.number,
                    onChanged: (v) => controller.age.value = v,
                    decoration: fieldStyle('Age'),
                  ),
                  const SizedBox(height: 14),

                  genderSelector(),
                  const SizedBox(height: 30),

                  actionButtons(widget.userId),
                ],
              ),
            );
          }),
        ),
        controller.showCenterLoading(context, Colors.transparent)
      ],
    );
  }
}

