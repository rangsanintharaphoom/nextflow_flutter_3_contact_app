import 'package:contact_app/models/contact_models.dart';
import 'package:get/get.dart';

class ContactController extends GetxController {
  //var contacts = [0,"a",true];

  RxList<ContactModel> contacts = <ContactModel>[].obs;

  void addContact(ContactModel contact) {
    contacts.add(contact);
  }
}
