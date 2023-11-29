import 'package:contact_app/models/contact_model.dart';
import 'package:get/get.dart';
// import 'package:nextflow_flutter_3_contact_app/models/contact_model.dart';

class AllContactController extends GetxController {
  // var contacts = [0, "a", true];

  RxList<ContactModel> contacts = <ContactModel>[].obs;

  void addContact(ContactModel contact) {
    contacts.add(contact);
  }
}
