import 'package:flutter/material.dart';

class Coffee_Info extends StatelessWidget {
  final String coffeeType;

  const Coffee_Info({Key? key, required this.coffeeType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title;
    String description;

    switch (coffeeType) {
      case 'espresso':
        title = '에스프레소';
        description = '강렬하고 진한 맛의 이탈리안 정통 에스프레소';
        break;
      case 'latte':
        title = '카페라떼';
        description = '부드러운 우유와 에스프레소의 조화로운 맛';
        break;
      case 'cappuccino':
        title = '카푸치노';
        description = '에스프레소, 스팀 밀크, 우유 거품이 1:1:1 비율로 구성된 커피';
        break;
      default:
        title = '알 수 없는 커피';
        description = '정보가 없습니다';
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.brown[800]),
        ),
        SizedBox(height: 4),
        Text(
          description,
          style: TextStyle(fontSize: 14, color: Colors.grey[600]),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}