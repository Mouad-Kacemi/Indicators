import 'package:flutter/material.dart';
import 'package:indicators/providers/food_details.dart';
import 'package:indicators/providers/foodprovider.dart';
import 'package:indicators/screens/menu.dart';
import 'package:provider/provider.dart';

class FoodCard extends StatelessWidget {
  FoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    final foodindex = Provider.of<FoodDetails>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.orange.shade100,
                  blurRadius: 10,
                  spreadRadius: 1.0,
                  offset: const Offset(4.0, 4.0))
            ]),
        child: ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: Image.asset(
              foodindex.foodimage,
            ),
            minLeadingWidth: 100,
            title: Text(foodindex.foodname),
            subtitle: Text('${foodindex.foodnbr} item'),
            trailing: TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    // Return a transparent color to disable the overlay effect
                    return Colors.transparent;
                  },
                ),
                splashFactory: NoSplash.splashFactory,
              ),
              onPressed: () {
                Navigator.pushNamed(context, MenuPage.route,
                    arguments: foodindex.id);
              },
              child: Transform.translate(
                offset: Offset(30, 0),
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Transform.flip(
                      flipX: true,
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
