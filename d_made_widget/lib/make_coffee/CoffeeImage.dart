import 'package:flutter/material.dart';

class Coffee_Image extends StatelessWidget {
  final String assetImage;  // 변수명을 소문자로 시작하도록 수정
  const Coffee_Image({Key? key, required this.assetImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect( // 자식 위젯을 둥근 직사각형 모양으로 자른다
      borderRadius: BorderRadius.circular(8), //모서리를 둥글게 만든다.
      child: Image.asset(
        assetImage,  // 전달받은 assetImage 경로 사용
        width: 100,
        height: 100,
        fit: BoxFit.cover, // 이미지가 지정된 크기를 꽉 채우도록 한다.
      ),
    );
  }
}