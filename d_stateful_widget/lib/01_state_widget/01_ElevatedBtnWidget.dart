import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElevatedBtnWidget extends StatelessWidget{
  final VoidCallback onPressed;
  final int count;

  ElevatedBtnWidget({required this.onPressed, required this.count, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text("eleBtn"),
        onPressed: () => onPressed(),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            overlayColor: Colors.red,
            foregroundColor: Colors.white
        ),
      ),
    );
  }
}