import 'package:flutter/material.dart';
import 'screens/coffee_cards_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Cards',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CoffeeCardsScreen(),
    );
  }
}