import 'package:flutter/material.dart';
import 'package:indicators/providers/food_details.dart';

class FoodTypeProvider with ChangeNotifier {
  final List<FoodDetails> foodTypes = [
    FoodDetails(
        id: 2,
        fooddescrp:
            'Savor the irresistible taste of our chicken pizza, topped with seasoned chicken, juicy tomatoes, melted cheese, and a crispy crust. Perfect for a quick and delicious meal on-the-go!',
        foodimage: 'assets/images/chickenp.png',
        foodname: 'Chicken Pizza',
        foodnbr: 2,
        foodprice: 5)
  ];
  void showCard() {}
}
