import 'package:get/get.dart';
import '../../controllers/contact_controller.dart';
import '../../models/contact_model.dart';

class NewContactController extends GetxController {

  var contactController = Get.find<ContactController>();

  String name = "";
  String email = "";
  var warningMessagee = "".obs;

  void save(){
    print("Name: $name");
    print("Email: $email");
    // ตรวจสอบว่ามีการกรอกข้อมูลหรือไม่
    if (name.isEmpty || email.isEmpty) {
      warningMessagee.value = "กรุณากรอกข้อมูลให้ครบ";
    } else {

      var contact = ContactModel(name, email);
      contactController.addContact(contact);
    
      warningMessagee.value = "";
      Get.back();
    }
  }
}