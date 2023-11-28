import 'package:contact_app/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/new_contact_page/new_contact_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nextflow Contact App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () {
            return const HomePage();
          },
        ),
        //ใส่ getpage ของ new contact page ที่นี่
        GetPage(
          name: '/new-contact',
          page: () {
            return NewContactPage();
          },
        ),
      ],
    );
  }
}
