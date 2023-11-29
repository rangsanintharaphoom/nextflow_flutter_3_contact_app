import 'package:contact_app/pages/new_contact_page/new_contact_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewContactPage extends StatelessWidget {
  var controller = Get.put(NewContactController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Contact'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Username',
                helperText: 'ใส่ชื่อของคุณ',
              ),
              onChanged: (value) {
                print(value);
                controller.name = value;
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                helperText: 'ใส่อีเมล์ของคุณ',
              ),
              onChanged: (value) {
                controller.email = value;
              },
            ),
            SizedBox(height: 16.0),
            Spacer(), // ใช้ Spacer ในการเว้นช่องว่าง
            Obx(() {
              return Text(controller.warningMessage.value);
            }),

            ElevatedButton.icon(
              onPressed: () {
                // ใช้ getx แสดง alert dialog
                Get.defaultDialog(
                    title: 'Save Contact',
                    middleText: 'Are you sure?',
                    textConfirm: 'Yes',
                    textCancel: 'No',
                    onConfirm: () {
                      // ใช้ getx แสดง snackbar
                      controller.save();
                      Get.back();
                      Get.back();
                    },
                    onCancel: () {
                      Get.back();
                    });
              },
              icon: const Icon(Icons.save), // Replace with your desired icon
              label: const Text('Save'),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(
                    double.infinity, 50)), // Increase the height to 50
              ),
            ),
          ],
        ),
      ),
    );
  }
}
