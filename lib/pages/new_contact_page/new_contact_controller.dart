import 'package:contact_app/models/modals_con.dart';
import 'package:get/get.dart';
import '../../controllers/conntact_controller.dart';

class NewContactController extends GetxController{
  var contact_controller =Get.find<ContactController>();
  String name = '';
  String email = '';
var warningss = '...'.obs;

 void save(){
    print('ชื่อ : $name');
    print('อีเมล : $email');

    if (name.isEmpty || email.isEmpty) {
      warningss.value = 'กรอกข้อมูลให้ครบ';

    } else {
      var contact = ContactModel(name, email);
      contact_controller.addContact(contact);
      Get.back();
    }
  }
}