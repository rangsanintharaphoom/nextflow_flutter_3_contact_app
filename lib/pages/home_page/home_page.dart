import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            icon: Icon(Icons.add_comment),
          ),
        ],
      ),
    );
  }
}
