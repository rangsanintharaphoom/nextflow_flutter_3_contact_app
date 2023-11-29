import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/conntact_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  var controller = Get.put(ContactController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('บ้าน'),
        //ใส่ปุ่มเพิ่ม และใส่ icon add ใน appbar
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
            child: Text('ไม่มีข้อมูล'),
          );
        } else {
          return ListView.builder(
            itemCount: controller.contacts.length, 
            itemBuilder: (BuildContext context, int index) {
              var contact = controller.contacts[index];  
              //  Text('$index : ${contact.name}');
              return ListTile(
                title: Text('${contact.name}' , style: TextStyle(fontSize: 20.0)),
                subtitle: Text('${contact.email}' , style: TextStyle(fontSize: 20.0)),
              );
            },
          );
        }
      }),
    );
  }
}
