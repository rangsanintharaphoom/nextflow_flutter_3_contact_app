import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
    );
  }
}
