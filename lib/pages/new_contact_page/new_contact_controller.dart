import 'package:contact_app/controllers/conttact_controllrt.dart';
import 'package:contact_app/models/contact_models.dart';
import 'package:get/get.dart';

class NewContactController extends GetxController {
  // สร้างตัวแปรไว้เก็บค่าจาก TextField
  var contactController = Get.find<ContactController>();

  String name = '';
  String email = '';
  var warningMessage = '...'.obs;

  void save() {
    print('Name: $name');
    print('Email: $email');

    // ตรวจสอบว่า name หรือ email ว่างหรือไม่
    if (name.isEmpty || email.isEmpty) {
      warningMessage.value = 'กรุณากรอกข้อมูลให้ครบ';
    } else {
      //สร้าง contactModel จาก name และ email
      var contact = ContactModel(name, email);
      //เพิ่ม contactModel ลงใน contactController
      contactController.addContact(contact);

      Get.back();
    }
  }
}
