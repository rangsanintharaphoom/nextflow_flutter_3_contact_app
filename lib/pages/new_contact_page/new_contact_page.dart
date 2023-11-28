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
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'EmailAddress',
              ),
            ),
            SizedBox(height: 16.0),
            SizedBox(
              width: 120.0, // ตั้งค่าความกว้างที่คุณต้องการ
              height: 50.0, // ตั้งค่าความสูงที่คุณต้องการ
              child: ElevatedButton(
                onPressed: () {
                  // Save button logic here
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
