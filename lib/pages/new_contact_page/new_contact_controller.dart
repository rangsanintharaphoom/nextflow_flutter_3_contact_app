import 'package:contact_app/controllers/contact_controller.dart';
import 'package:contact_app/models/contact_model.dart';
import 'package:get/get.dart';

class NewContactController extends GetxController {
  String name = '';
  String email = '';

  void onNameChanged(String value) {
    name = value;
  }

  void onEmailChanged(String value) {
    email = value;
  }

  void save() {
    print('name: ${name}');
    print('email: ${email}');

    var contactController = Get.find<ContactController>();
    contactController.addContact(
      ContactModel(
        name,
        email,
      ),
    );

    Get.back();
  }
}
