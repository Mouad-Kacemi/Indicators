import 'package:flutter/material.dart';
import 'package:indicators/providers/food_details.dart';
import 'package:indicators/providers/foodprovider.dart';
import 'package:indicators/screens/menu.dart';
import 'package:provider/provider.dart';

class MenuCard extends StatefulWidget {
  MenuCard({super.key});

  @override
  State<MenuCard> createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {
  bool expanded = false; // To track the expanded state

  @override
  Widget build(BuildContext context) {
    final foodindex = Provider.of<FoodDetails>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.orange.shade100,
              blurRadius: 10,
              spreadRadius: 1.0,
              offset: const Offset(4.0, 4.0),
            )
          ],
        ),
        child: Column(
          children: [
            ListTile(
              leading: Transform.translate(
                offset: Offset(-25, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        spreadRadius: 1.0,
                        offset: const Offset(4.0, 4.0),
                      )
                    ],
                  ),
                  child: Image.asset(foodindex.foodimage),
                ),
              ),
              contentPadding: EdgeInsets.all(0),
              title: Text(foodindex.foodname),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (expanded)
                    Container(
                      width: double.infinity,
                      child: Text(foodindex.fooddescrp),
                    ),
                  Text(
                    '${foodindex.foodprice}0\$',
                    style: TextStyle(color: Colors.orange, fontSize: 18),
                  ),
                  // Show description when expanded
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
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
                  setState(() {
                    expanded = !expanded; // Toggle the expanded state
                  });
                },
                child: Transform.translate(
                  offset: Offset(35, 0),
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
                          expanded
                              ? Icons.arrow_drop_up
                              : Icons.arrow_drop_down,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
