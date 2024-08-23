import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Show SnackBar'),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('This is a SnackBar!'),
              duration: Duration(seconds: 3),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  // 실행 취소 로직을 여기에 작성
                  print('Undo action pressed');
                },
              ),
            ),
          );
        },
      ),
    );
  }
}