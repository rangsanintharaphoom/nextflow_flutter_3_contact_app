import 'package:flutter/material.dart';

class NewContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Contact'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16.0),
            // TODO: Add phone number field
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Save button logic
                },
                child: Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
