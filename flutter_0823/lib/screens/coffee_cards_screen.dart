import 'package:flutter/material.dart';
import '../widgets/coffee_card.dart';
import '../models/coffee.dart';

class CoffeeCardsScreen extends StatefulWidget {
  @override
  _CoffeeCardsScreenState createState() => _CoffeeCardsScreenState();
}

class _CoffeeCardsScreenState extends State<CoffeeCardsScreen> {
  List<Coffee> coffees = [
    Coffee(number: "1", type: "Black Coffee", description: "Svart kaffe är så enkelt som det kan bli me...", imageUrl: "assets/image1.png", isFavorite: true),
    Coffee(number: "2", type: "Latte", description: "Som den mest populära kaffedrycken där ...", imageUrl: "assets/image2.png", isFavorite: true),
    Coffee(number: "3", type: "Caramel Latte", description: "Om du gillar latte med en speciell smak kan kara...", imageUrl: "assets/image3.png", isFavorite: false),
  ];

  void toggleFavorite(int index) {
    setState(() {
      coffees[index].isFavorite = !coffees[index].isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Coffee Cards')),
      body: ListView.builder(
        itemCount: coffees.length,
        itemBuilder: (context, index) {
          return CoffeeCard(
            coffee: coffees[index],
            onFavoritePressed: () => toggleFavorite(index),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
        ],
      ),
    );
  }
}