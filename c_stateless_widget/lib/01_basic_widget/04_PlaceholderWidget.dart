import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  const PlaceholderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PlaceholderWidget Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Basic Placeholder:'),
            Placeholder(
              fallbackHeight: 100,
              fallbackWidth: 200,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            Text('Placeholder in a Container:'),
            Container(
              width: 150,
              height: 150,
              color: Colors.grey[200],
              child: Placeholder(
                color: Colors.red,
              ),
            ),
            SizedBox(height: 20),
            Text('Placeholder with custom shape:'),
            ClipOval(
              child: Placeholder(
                fallbackHeight: 100,
                fallbackWidth: 100,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}