import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);


  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();

  }

class _FavoriteButtonState extends State<FavoriteButton>{
  bool _isLiked = false;

  void messageBtn(BuildContext context, String text) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(text + "버튼 클릭")));
  }

  void _toggleLike() {
    setState(() {
      _isLiked = !_isLiked;
    });
    messageBtn(context, "하트");
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 외각선이 있는 버튼 위젯이다.
        OutlinedButton(
          onPressed: () => messageBtn(context, "아웃라인"),
          child: const Text("아웃라인 버튼"),
        ),

        IconButton(
          onPressed: _toggleLike,
          icon: Icon(
            Icons.favorite,
            color: _isLiked ? Colors.red : Colors.grey,
          ),
        ),

        FloatingActionButton(
          onPressed: () => messageBtn(context, "플로팅 액션"),
          mini: true,
          child: const Icon(Icons.add),
        )
      ],
    );
  }
}