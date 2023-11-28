import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        //เพิ่มปุ่ม add ใน AppBar เพื่อไปยังหน้า NewContactPage
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/new-contact');
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      //เพิ่มปุ่ม ลูกศร ใน AppBar เพื่อไปยังหน้า main_page
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home Page'),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/main');
              },
              child: Text('Go to Main Page'),
            ),
          ],
        ),
      ),
    );
  }
}
