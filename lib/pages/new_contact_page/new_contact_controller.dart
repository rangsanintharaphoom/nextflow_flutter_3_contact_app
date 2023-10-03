import 'package:contact_app/controllers/contact_controller.dart';
import 'package:contact_app/models/contact_model.dart';
import 'package:get/get.dart';

class NewContactController extends GetxController {
  final name = ''.obs;
  final email = ''.obs;

  void onNameChanged(String value) {
    name.value = value;
  }

  void onEmailChanged(String value) {
    email.value = value;
  }

  void save() {
    print('name: ${name.value}');
    print('email: ${email.value}');

    var contactController = Get.find<ContactController>();
    contactController.addContact(
      ContactModel(
        name.value,
        email.value,
      ),
    );

    Get.back();
  }
}
