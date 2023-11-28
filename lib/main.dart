import 'package:contact_app/pages/home_page/home_page.dart';
import 'package:contact_app/pages/new_contact_page/new_contact_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        //useMaterial3: true,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () {
            return const HomePage();
          },
        ),
        GetPage(
          name: "/new-contact",
          page: () {
            return NewContactPage();
          },
        ),
        ],
    );
  }
}
