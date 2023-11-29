
import 'package:get/get.dart';
import '../models/modals_con.dart';

class ContactController extends GetxController {
  // var contacts = [0,"a",true];
  var contacts = <ContactModel>[].obs;

  void addContact(ContactModel contact) {
    contacts.add(contact);
  }
}
