import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:usermanage_app/controllers/user_controller/create_user_controller.dart';
import 'package:usermanage_app/widgtes/custom_scaffold.dart';

class CreateUserScreen extends StatefulWidget {
  const CreateUserScreen({super.key});

  @override
  State<CreateUserScreen> createState() => _CreateUserScreenState();
}

class _CreateUserScreenState extends State<CreateUserScreen> {
  CreateUserController controller = Get.find();

  InputDecoration inputStyle(String label) {
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
    return Obx(() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Gender',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: RadioListTile(
                title: const Text('Male'),
                value: 'Male',
                groupValue: controller.gender.value,
                onChanged: (v) => controller.gender.value = v!,
              ),
            ),
            Expanded(
              child: RadioListTile(
                title: const Text('Female'),
                value: 'Female',
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
    return CustomScaffold(
      isShowAppBar: true,
      title: "Create User",
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),

            TextField(
              onChanged: (v) => controller.name.value = v,
              decoration: inputStyle('Name'),
            ),
            const SizedBox(height: 16),

            TextField(
              onChanged: (v) => controller.email.value = v,
              keyboardType: TextInputType.emailAddress,
              decoration: inputStyle('Email'),
            ),
            const SizedBox(height: 16),

            TextField(
              onChanged: (v) => controller.age.value = v,
              keyboardType: TextInputType.number,
              decoration: inputStyle('Age'),
            ),
            const SizedBox(height: 16),

            genderSelector(),
            const SizedBox(height: 30),

            Obx(() => SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: controller.isLoading.value
                    ? null
                    : controller.createUser,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: controller.isLoading.value
                    ? const CircularProgressIndicator(
                  color: Colors.white,
                )
                    : const Text(
                  'Create User',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
