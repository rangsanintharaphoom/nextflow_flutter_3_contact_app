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
      title: 'Nextflow Contact App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 30, 233, 84)),
        // useMaterial3: true,
      ),
      initialRoute: '/',
      getPages: [
        // ใส่ getpage ของ home page ที่นี่
        GetPage(
          name: '/',
          page: () {
            return HomePage();
          },
        ),
        // ใส่ getpage ของ new contact page ที่นี่
        GetPage(
          name: '/new-contact',
          page: () {
            return NewContactPage();
          },
        ),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
