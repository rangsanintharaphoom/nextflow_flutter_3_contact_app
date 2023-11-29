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
        title: Text('Home'),
        // เพิ่มปุ่ม Add ใน AppBar
        // ให้เรียกไปยังหน้า NewContactPage
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/new-contact');
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Obx(() {
        if (controller.contacts.isEmpty) {
          return Center(
            child: Text("ยังไม่มีข้อมูล"),
          );
        } else {
          //return Text("มีข้อมูล");

          return ListView.builder(
            itemCount: controller.contacts.length,
            itemBuilder: (BuildContext context, int index) {
              var contact = controller.contacts[index];

              //return Text('$index : ${contact.name}');

              return ListTile(
                title: Text('${contact.name}'),
                subtitle: Text('${contact.email}'),
              );
            },
          );
        }

        // return Center(
        //   child: Text("กดปุ่ม + "),
        // );
      }),
    );
  }
}
