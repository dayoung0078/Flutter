import 'package:flutter/material.dart';

// TooltipWidget은 사용자가 위젯을 길게 누르거나 마우스를 올렸을 때 추가 정보를 표시하는 데 사용됩니다.

class TooltipWidget extends StatelessWidget {
  const TooltipWidget({super.key});



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Tooltip(
        message: '이것은 정보 아이콘입니다',
        child: IconButton(
          icon: Icon(Icons.info),
          onPressed: () {},
        ),
      ),
    );
  }
}