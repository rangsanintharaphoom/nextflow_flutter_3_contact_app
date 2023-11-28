import 'package:flutter/material.dart';

class mainPage extends StatelessWidget {
  final String imageUrl;
  final String description;
  final String imageLink;

  const mainPage({
    required this.imageUrl,
    required this.description,
    required this.imageLink,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(imageUrl),
        SizedBox(height: 10),
        Text(description),
        SizedBox(height: 10),
        TextButton(
          onPressed: () {
            // Open the image link
          },
          child: Text('View Image'),
        ),
      ],
    );
  }
}
