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
                helperText: 'กรอกได้สูงสุด 50 ตัวอักษร'
              ),
            maxLength: 50,
              onChanged: (value) {
                print(value);
                controller.email = value;
              },
            ),
            Spacer(),
            Obx(() {
              
              return Text('${controller.warningss.value}');
            }),
            // Text(
            //   '${controller.warningss}',
            //   style: TextStyle(
            //     color: Colors.red,
            //   )
            // )
            
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  
                  controller.save();
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