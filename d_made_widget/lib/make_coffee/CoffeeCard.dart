import 'package:flutter/cupertino.dart';

class CardNumber extends StatelessWidget {
  final String number;

  const CardNumber({Key? key, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      number,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}