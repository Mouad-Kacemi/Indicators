import 'package:flutter/material.dart';
import 'package:indicators/providers/food_details.dart';
import 'package:indicators/providers/foodprovider.dart';
import 'package:indicators/screens/menu.dart';
import 'package:provider/provider.dart';

class PacketCard extends StatefulWidget {
  PacketCard({super.key});

  @override
  State<PacketCard> createState() => _PacketCardState();
}

class _PacketCardState extends State<PacketCard> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  // To track the expanded state

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
        child: ListTile(
          trailing: Container(
            width: 130,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.remove,
                    size: 25,
                    color: Colors.orange,
                  ),
                  onPressed: _decrementCounter,
                ),
                Text(
                  '0$_counter',
                  style: TextStyle(fontSize: 15),
                ),
                IconButton(
                  icon: Icon(
                    Icons.add,
                    size: 25,
                    color: Colors.orange,
                  ),
                  onPressed: _incrementCounter,
                ),
              ],
            ),
          ),
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
          contentPadding: EdgeInsets.zero,
          title: Text(foodindex.foodname),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
        ),
      ),
    );
  }
}
