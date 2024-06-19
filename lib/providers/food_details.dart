import 'package:flutter/material.dart';

class FoodDetails with ChangeNotifier {
  final int id;
  final String foodname;
  final String fooddescrp;
  final int foodnbr;
  final double foodprice;
  final String foodimage;

  FoodDetails(
      {required this.id,
       required this.fooddescrp,
      required this.foodimage,
      required this.foodname,
      required this.foodnbr,
      required this.foodprice});
  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}
