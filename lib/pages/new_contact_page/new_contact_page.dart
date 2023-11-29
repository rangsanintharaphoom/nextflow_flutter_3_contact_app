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
                labelText: 'Name',
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
                helperText: 'กรอกข้อมูลได้ 50 ตัวอักษร',
              ),
              onChanged: (value) => controller.email = value,
              maxLength: 50,
            ),
            //SizedBox(height: 16.0),
            Spacer(),
            // Text('${controller.warringMessage}',
            //     style: TextStyle(color: Colors.red)),
            Obx(() {
              //print(controller.warringMessage.value);

              return Text('${controller.warringMessage.value}');
            }),

            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
//ใช้ GetX แสดง alert dialog
                  Get.defaultDialog(
                    title: 'Save Contact',
                    middleText: 'Are you sure?',
                    textConfirm: 'Confirm',
                    textCancel: 'Cancel',
                    onConfirm: () {
                      controller.save();
                    },
                    onCancel: () {
                      Get.back();
                    },
                  );
                },
                child: Text('Save'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
