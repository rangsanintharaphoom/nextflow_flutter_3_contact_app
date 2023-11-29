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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 58, 98, 183)),
        // useMaterial3: true,  //ใช้เลือก theme โทนเดียวกับพื้นหลัง
      ),
      initialRoute: '/',
      getPages: [
        //Getpage Array
        GetPage(
          name: '/',
          page: (){
            return  HomePage();  
          },
        ),
        //ใส่getpage ของ newcontactpage ตรงนี้
        GetPage(
          name: '/new-contact',
          page: (){
            return  NewContactPage();
          },
        ),
      ],
    );
  }
}
