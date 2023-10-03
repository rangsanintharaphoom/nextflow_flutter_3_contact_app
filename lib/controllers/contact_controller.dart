import 'package:contact_app/models/contact_model.dart';
import 'package:get/get.dart';

class ContactController extends GetxController {
  final contacts = <ContactModel>[].obs;

  void addContact(ContactModel contact) {
    contacts.add(contact);
  }
}
