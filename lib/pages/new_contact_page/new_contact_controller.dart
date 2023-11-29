import 'package:contact_app/controllers/contact_controller.dart';
import 'package:contact_app/models/contact_model.dart';
import 'package:get/get.dart';

class NewContactController extends GetxController {
  var contactController = Get.find<ContactController>();

  String name = '';
  String email = '';

  //var warringMessage = '...';
  var warringMessage =
      '...'.obs; // obs คือ observable ทำให้เป็น reactive ของ GetX

  void save() {
    print('Name: $name, Email: $email');

    //ตรวจสอบ name และ Email ว่างให้แจ้งเตือน
    if (name.isEmpty || email.isEmpty) {
      //warringMessage = 'กรุณากรอกข้อมูลให้ครบ';
      warringMessage.value = 'กรุณากรอกข้อมูลให้ครบ';
      Get.back();
    } else {
      //สร้าง ContactModel จาก name และ email
      var contact = ContactModel(name, email);

      // เพิ่ม contact ลงใน contactController
      contactController.addContact(contact);

      Get.back();
      Get.back(); //กลับไปที่หน้าก่อนหน้านี้เพราะจำจาก Histor ไว้ตามลำดับเพราะตัว dialog ก็เป็น wi
    }
  }
}
