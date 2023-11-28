
import 'package:flutter/material.dart';

class NewContactPage extends StatelessWidget {

  String name = 'admin';
  String email = 'ad';

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  
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
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            SizedBox(height: 30.0),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              width: double.infinity,
              height: 40.0,
              child: ElevatedButton(
                onPressed: () {
                  if (_nameController.text == name && _emailController.text == email) {
                    print('ชื่อถูกต้อง');
                    //แสดงกล่องข้อความ ว่า ชื่อถูกต้อง และ บันทึกข้อมูลเรียบร้อยแล้ว
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('บันทึกข้อมูลเรียบร้อยแล้ว'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                    
                    // TODO: Implement save functionality
                  } else {
                    print('ชื่อไม่ถูกต้อง');
                    //แสดงกล่องข้อความ ว่า ชื่อไม่ถูกต้อง และ บันทึกข้อมูลไม่ได้
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('บันทึกข้อมูลไม่ได้'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                    

                    // TODO: Show an error message
                  }
                },
                child: Text('Save', style: TextStyle(fontSize: 16.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 

