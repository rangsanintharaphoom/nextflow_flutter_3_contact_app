import 'package:contact_app/pages/new_contact_page/new_contact_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewContactPage extends StatelessWidget {
  var cotroller = Get.put(NewContactController());
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
                cotroller.name = value;
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              onChanged: (value) {
                cotroller.email = value;
              },
            ),
            //SizedBox(height: 16.0),
            Spacer(),
            Obx(() {
              return Text('${cotroller.warnningMessage}');
            }),
            // TODO: Add phone number field
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Save button logic
                  cotroller.save();
                  Get.back();
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
