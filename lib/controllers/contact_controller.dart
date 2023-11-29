
import 'package:get/get.dart';
// ignore: unused_import
import '../models/contact_model.dart';

class ContactController extends GetxController {
var contacts = <ContactModel>[].obs;

  void addContact(ContactModel contact) {
    contacts.add(contact);
  }

}

class contact_model {
}

class Contact {
}
