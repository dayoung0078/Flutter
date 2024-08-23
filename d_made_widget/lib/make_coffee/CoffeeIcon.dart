import 'package:flutter/material.dart';

class CoffeeIcon extends StatelessWidget{
  final bool isFavorite;
  final VoidCallback onPressed; // 버튼에 이게 필요함

  const CoffeeIcon ({Key? key, required this.isFavorite, required this.onPressed}) : super(key:key);

  void _showMessage(BuildContext context, String text) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("$text 버튼 클릭")));
  }


  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.favorite,
        color: isFavorite ? Colors.red : Colors.grey,
      ),
      onPressed: () {
        onPressed();
        _showMessage(context, "하트아이콘");
      },
    );
  }
}

