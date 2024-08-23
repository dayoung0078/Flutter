import 'package:flutter/material.dart';

class ShowDialogWidget extends StatelessWidget {
  const ShowDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('대화 상자 열기'),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('알림'),
                content: Text('이것은 대화 상자 예시입니다.'),
                actions: <Widget>[
                  TextButton(
                    child: Text('닫기'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}