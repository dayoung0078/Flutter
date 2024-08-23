import 'package:flutter/material.dart';
import 'package:d_made_widget/make_coffee/CoffeeCard.dart';
import 'package:d_made_widget/make_coffee/CoffeeIcon.dart';
import 'package:d_made_widget/make_coffee/CoffeeImage.dart';
import 'package:d_made_widget/make_coffee/CoffeeInfo.dart';
import 'package:d_made_widget/make_coffee/CoffeeXcon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CoffeeCardsScreen(),
    );
  }
}

class CoffeeCardsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> coffees = [
    {"number": "1", "type": "Black Coffee", "imageUrl": "assets/image1.png", "isFavorite": true},
    {"number": "2", "type": "Latte", "imageUrl": "assets/image2.png", "isFavorite": true},
    {"number": "3", "type": "Caramel Latte", "imageUrl": "assets/image3.png", "isFavorite": false},
    {"number": "4", "type": "Cappuccino", "imageUrl": "assets/image4.png", "isFavorite": false},
    {"number": "5", "type": "Americano", "imageUrl": "assets/image5.png", "isFavorite": false},
    {"number": "6", "type": "Espresso", "imageUrl": "assets/image6.png", "isFavorite": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Coffee Cards'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: coffees.length,
        itemBuilder: (context, index) {
          return CoffeeCardWrapper(
            number: coffees[index]["number"],
            coffeeType: coffees[index]["type"],
            imageUrl: coffees[index]["imageUrl"],
            isFavorite: coffees[index]["isFavorite"],
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

class CoffeeCardWrapper extends StatefulWidget {
  final String number;
  final String coffeeType;
  final String imageUrl;
  final bool initialFavorite;

  const CoffeeCardWrapper({
    Key? key,
    required this.number,
    required this.coffeeType,
    required this.imageUrl,
    required this.initialFavorite,
  }) : super(key: key);

  @override
  _CoffeeCardWrapperState createState() => _CoffeeCardWrapperState();
}

class _CoffeeCardWrapperState extends State<CoffeeCardWrapper> {
  late bool _isFavorite;

  @override
  void initState() {
    super.initState();
    _isFavorite = widget.initialFavorite;
  }

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          children: [
            CardNumber(number: widget.number),
            SizedBox(width: 12),
            Coffee_Image(assetImage: widget.imageUrl),
            SizedBox(width: 12),
            Expanded(child: Coffee_Info(coffeeType: widget.coffeeType)),
            Column(
              children: [
                CoffeeIcon(
                  isFavorite: _isFavorite,
                  onPressed: _toggleFavorite,
                ),
                SizedBox(height: 8),
                Coffee_Xcon(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}