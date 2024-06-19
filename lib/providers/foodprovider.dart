import 'package:flutter/material.dart';
import 'package:indicators/providers/food_details.dart';

class FoodProvider with ChangeNotifier {
  final List<FoodDetails> food = [
    FoodDetails(
        fooddescrp: '',
        foodimage: 'assets/images/burger.png',
        foodname: 'Burger',
        foodnbr: 5,
        foodprice: 400.00,
        id: 1),
    FoodDetails(
        fooddescrp: '',
        foodimage: 'assets/images/pizza.png',
        foodname: 'Pizza',
        foodnbr: 3,
        foodprice: 300.00,
        id: 2),
    FoodDetails(
        id: 3,
        fooddescrp: '',
        foodimage: 'assets/images/sandwich.png',
        foodname: 'Sandwich',
        foodnbr: 7,
        foodprice: 250.00),
  ];
 
}
