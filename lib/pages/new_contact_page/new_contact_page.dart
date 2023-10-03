import 'package:contact_app/pages/new_contact_page/new_contact_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewContactPage extends StatelessWidget {
  NewContactPage({super.key});

  var controller = Get.put(NewContactController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Contact'),
      ),
      // a new contact form, contain 'name' field and 'email field
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
              ),
              onChanged: (value) {
                controller.onNameChanged(value);
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              onChanged: (value) {
                controller.onEmailChanged(value);
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                controller.save();
              },
              child: Text('Save'),
            )
          ],
        ),
      ),
    );
  }
}
