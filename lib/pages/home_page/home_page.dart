import 'package:contact_app/controllers/conttact_controllrt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final ContactController controller = Get.put(ContactController());

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/new-contact');
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Obx(() {
        if (controller.contacts.isEmpty) {
          return const Center(
            child: Text('กดปุ่ม + เพื่อเพิ่มข้อมูล'),
          );
        } else {
          return ListView.builder(
            itemCount: controller.contacts.length,
            itemBuilder: (BuildContext context, int index) {
              var contact = controller.contacts[index];

              //return Text('$index : ${contact.name} ${contact.email}');
              return ListTile(
                title: Text(contact.name),
                subtitle: Text(contact.email),
                //CircleAvatar จะแสดงรูปภาพในรูปวงกลม
                leading: CircleAvatar(
                  child: Text(contact.name[0]),
                ),
                trailing: IconButton(
                  onPressed: () {
                    // controller.deleteContact(contact.id);
                  },
                  //icon delete
                  icon: const Icon(Icons.delete),
                ),
                onTap: () {
                  Get.toNamed('/edit-contact', arguments: contact);
                },
              );
            },
          );
        }
      }),
    );
  }
}
