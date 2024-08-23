import 'package:flutter/material.dart';
import '../models/coffee.dart';
import 'favorite_button.dart';

class CoffeeCard extends StatelessWidget {
  final Coffee coffee;
  final VoidCallback onFavoritePressed;

  CoffeeCard({required this.coffee, required this.onFavoritePressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(coffee.number, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(width: 12),
            Image.asset(coffee.imageUrl, width: 44, height: 44, fit: BoxFit.cover),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(coffee.type, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.purple)),
                  Text(coffee.description, style: TextStyle(fontSize: 14), maxLines: 2, overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
            FavoriteButton(
              isliked: coffee.isFavorite,
              onPressed: onFavoritePressed,
            ),
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                // Implement remove functionality
              },
            ),
          ],
        ),
      ),
    );
  }
}