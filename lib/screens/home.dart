import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:indicators/helpers/ColorsSys.dart';
import 'package:indicators/providers/foodprovider.dart';
import 'package:indicators/screens/packet.dart';

import 'package:indicators/screens/profile.dart';
import 'package:indicators/screens/settings.dart';
import 'package:indicators/widgets/mini_food_card.dart';
import 'package:indicators/widgets/food_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String route = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final fooddata = Provider.of<FoodProvider>(context).food;
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Home',
            style: TextStyle(
                color: ColorSys.primary,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Profile.route);
                  },
                  icon: Icon(
                    Icons.account_circle,
                    size: 43,
                    color: Colors.orange,
                  )),
            )
          ]),
      drawer: Drawer(
        backgroundColor: Colors.orange,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 35,
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Packet.route);
                },
                child: ListTile(
                  leading: Icon(
                    color: Colors.white,
                    Icons.shopping_cart,
                    size: 35,
                  ),
                  title: Text(
                    "Packet",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Profile.route);
                },
                child: ListTile(
                  leading: Icon(
                    color: Colors.white,
                    Icons.account_circle,
                    size: 35,
                  ),
                  title: Text(
                    "Profile",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: ListTile(
                  leading: Icon(
                    color: Colors.white,
                    Icons.bookmark,
                    size: 35,
                  ),
                  title: Text(
                    "Saved",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Settings.route);
                },
                child: ListTile(
                  leading: Icon(
                    color: Colors.white,
                    Icons.settings,
                    size: 35,
                  ),
                  title: Text(
                    "Settings",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Text(
                "Get Your",
                style: TextStyle(color: ColorSys.primary, fontSize: 25),
              ),
              Text(
                " Best",
                style: TextStyle(
                    color: ColorSys.primary,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Food",
                style: TextStyle(
                    color: ColorSys.primary,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                " Around You !",
                style: TextStyle(
                  color: ColorSys.primary,
                  fontSize: 25,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Categories:",
            style: TextStyle(
                color: ColorSys.primary,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 25,
          ),
          Flexible(
            flex: 6,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 30,
                );
              },
              itemBuilder: (context, index) {
                return ChangeNotifierProvider.value(
                  value: fooddata[index],
                  child: FoodCard(),
                );
              },
              itemCount: fooddata.length,
            ),
          ),
          Flexible(
            flex: 4,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular items:",
                    style: TextStyle(
                        color: ColorSys.primary,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View all items",
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.1,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 30,
                    );
                  },
                  itemBuilder: (context, index) {
                    return ChangeNotifierProvider.value(
                      value: fooddata[index],
                      child: MiniFoodCard(),
                    );
                  },
                  itemCount: fooddata.length,
                ),
              ),
            ]),
          )
        ]),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 300),
        color: Colors.orange,
        buttonBackgroundColor: Colors.orange,
        backgroundColor: Colors.white,
        items: [
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.home,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.account_circle_rounded,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
    );
  }
}
