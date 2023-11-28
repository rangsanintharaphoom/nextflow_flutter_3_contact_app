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
            ElevatedButton.icon(
              onPressed: () {
                // TODO: Implement save functionality
              },
              icon: Icon(Icons.save), // Replace with your desired icon
              label: Text('Save'),
              // style: ButtonStyle(
              //   minimumSize: MaterialStateProperty.all(
              //       Size(double.infinity, 50)), // Increase the height to 50
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
