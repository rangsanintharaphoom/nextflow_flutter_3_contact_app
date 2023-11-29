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
              decoration: InputDecoration(
                labelText: 'Username',
                helperText: 'Up to 20 characters',
              ),
              maxLength: 20,
              onChanged: (value) {
                controller.warningText.value = '';
                controller.name = value;
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'EmailAddress',
                helperText: 'Up to 20 characters',
              ),
              maxLength: 20,
              onChanged: (value) {
                controller.email = value;
              },
            ),
            SizedBox(height: 16.0),
            Spacer(),
            Obx(() {
              // print(controller.warningText.value);
              return Text('${controller.warningText.value}',
                  style: TextStyle(color: Colors.red));
            }),
            // Text('${controller.warningText}',
            //     style: TextStyle(color: Colors.red)),
            SizedBox(
              width: 120.0, // ตั้งค่าความกว้างที่คุณต้องการ
              height: 50.0, // ตั้งค่าความสูงที่คุณต้องการ
              child: ElevatedButton(
                onPressed: () {
                  // Save button logic here

                  // // ใช้ GetX แสดง dialog และเมื่อผู้ใช้กด OK จะเป็นการเรียกใช้ฟังก์ชัน save ใน NewContactController
                  // Get.defaultDialog(
                  //   title: 'Save Contact',
                  //   middleText: 'Are you sure?',
                  //   textConfirm: 'OK',
                  //   textCancel: 'Cancel',
                  //   onConfirm: () {
                  //     controller.save();
                  //     Get.back();
                  //     Get.back();
                  //   },
                  //   onCancel: () {
                  //     Get.back();
                  //   },
                  // );

                  controller.save();
                },
                child: Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
