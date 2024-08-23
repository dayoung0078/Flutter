import 'package:flutter/material.dart';
import 'package:c_stateless_widget/01_basic_widget/00_Combination.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basic Widget Example",
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text("Basic Widget")
        ),
        body: const Center(
          child: Combination(),
        ),
      ),
    );
  }
}