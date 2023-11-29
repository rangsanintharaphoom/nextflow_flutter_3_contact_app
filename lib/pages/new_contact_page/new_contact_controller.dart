import 'package:get/get.dart';

import '../../controllers/contact_controller.dart';
import '../../models/contact_model.dart';

class NewContactController extends GetxController{

  var ContactController1=Get.find<ContactController>();
  String name = '';
  String email = '';

var warnningMessage = '...'.obs;
  void save(){
    print('Name: $name');
    print('Email: $email');
    // ตรวจสอบว่า Name & Email ว่างหรือไม่
    if(name.isEmpty || email.isEmpty){
      warnningMessage.value = 'กรุณากรอกข้อมูลให้ครบถ้วน';
      return;
    } else {
      // สร้าง ContactModel และเพิ่มลงใน ContactController
      var contact = ContactModel(name, email);
      ContactController1.addContact(contact);
      Get.back();
    }
  }
}