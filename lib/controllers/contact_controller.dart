import 'package:get/get.dart';
import '../models/contact_model.dart';

class ContactController extends GetxController {
  var contacts = <ContactModel>[].obs;
 
  void addContact(ContactModel contact) {
    contacts.add(contact);
  }
}
