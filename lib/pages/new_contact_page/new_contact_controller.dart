import 'package:get/get.dart';
import '../../controllers/all_contact_controller.dart';
import '../../models/contact_model.dart';

class NewContactController extends GetxController {
  var allcontroller = Get.find<AllContactController>();

  String name = '';
  String email = '';

  var warningText = ''.obs;

  void save() {
    print('Name: $name');
    print('Email: $email');

    // ตรวจสอบว่ามีข้อมูลที่จำเป็นในการบันทึกหรือไม่
    if (name.isEmpty || email.isEmpty) {
      warningText.value = 'Please fill in name and email';
    } else {
      // บันทึกข้อมูล
      // ไปยังหน้า Home

      //allcontroller.addContact(ContactModel(name: name, email: email));
      var contact = ContactModel(name, email);
      allcontroller.addContact(contact);

      Get.back();
    }
  }
}
