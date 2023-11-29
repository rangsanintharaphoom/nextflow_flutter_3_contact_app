import 'package:contact_app/models/contact_model.dart';
import 'package:get/get.dart';

class ContactController extends GetxController {
  //RxList<ContactModel> contacts = <ContactModel>[].obs;
  var contacts = <ContactModel>[].obs;

//ในภาษา Dart จะไม่มี Arrat แต่มี List แทน
  //var contacts = [0, "a", true];
  //List<String> contacts = ["0","a", "b", "c"];
  //List<bool> contacts = [true, false];

  void addContact(ContactModel contact) {
    contacts.add(contact);
  }
}
