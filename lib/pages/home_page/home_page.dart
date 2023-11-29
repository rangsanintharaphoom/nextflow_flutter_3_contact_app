import 'package:contact_app/controllers/contact_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  var controller = Get.put(ContactController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        // เพิ่มปุ่ม add ใน AppBar
        actions: [
          IconButton(
            onPressed: () {
              // ไปยังหน้า NewContactPage
              Get.toNamed('/new-contact');
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Obx(() {
        if (controller.contacts.isEmpty) {
          return const Center(
            child: Text('ไม่มีข้อมูล'),
          );
        } else {
          return ListView.builder(
            itemCount: controller.contacts.length,
            itemBuilder: (BuildContext context, int index) {

              var contact = controller.contacts[index];
              return ListTile(title: Text(contact.name),
              subtitle: Text(contact.email),
              );

              // return Text('$index name : ${contact.name}\n email : ${contact.email}');
            },
          );
        }
      }),
    );
  }
}
