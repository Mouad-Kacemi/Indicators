import 'package:flutter/material.dart';
import 'package:indicators/providers/food_details.dart';
import 'package:indicators/providers/foodprovider.dart';
import 'package:provider/provider.dart';

class MiniFoodCard extends StatelessWidget {
  MiniFoodCard({Key? key});

  @override
  Widget build(BuildContext context) {
    final foodindex = Provider.of<FoodDetails>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.orange.shade100,
              blurRadius: 10,
              spreadRadius: 1.0,
              offset: const Offset(4.0, 4.0),
            ),
          ],
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.2,
          child: ListTile(
            leading: Image.asset(
              foodindex.foodimage,
              fit: BoxFit.fill,
            ),
            title: Text(foodindex.foodname),
            subtitle: Text('${foodindex.foodnbr} item'),
          ),
        ),
      ),
    );
  }
}
