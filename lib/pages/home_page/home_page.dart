import 'package:contact_app/controllers/all_contact_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var allcontroller = Get.put(AllContactController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        // เพิ่ม ปุ่ม add ด้านขวาของ AppBar
        actions: [
          IconButton(
            onPressed: () {
              // ไปยังหน้า NewContactPage
              Get.toNamed('/new-contact');
            },
            icon: Icon(Icons.add_home),
          ),
        ],
      ),
      body: Obx(() {
        if (allcontroller.contacts.isEmpty) {
          return Center(
            child: Text('No have any contact ...'),
          );
        } else {
          return ListView.builder(
            itemCount: allcontroller.contacts.length,
            itemBuilder: (BuildContext context, int index) {
              var item = index + 1;
              var contact = allcontroller.contacts[index];
              return ListTile(
                title: Text(contact.name),
                subtitle: Text(contact.email),
              );
            },
          );
        }
      }),
    );
  }
}
