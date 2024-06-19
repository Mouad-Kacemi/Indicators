import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:indicators/providers/foodtype_provider.dart';
import 'package:indicators/screens/home.dart';
import 'package:indicators/screens/profile.dart';
import 'package:indicators/screens/settings.dart';
import 'package:indicators/widgets/packet_card.dart';
import 'package:provider/provider.dart';

class Packet extends StatefulWidget {
  const Packet({super.key});
  static String route = '/packet';

  @override
  State<Packet> createState() => _PacketState();
}

class _PacketState extends State<Packet> {
  int _page = 0;
  @override
  Widget build(BuildContext context) {
    final foodtype = Provider.of<FoodTypeProvider>(context).foodTypes;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Packet',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      drawer: Drawer(
        backgroundColor: Colors.orange,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, HomePage.route);
                },
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
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 30,
            );
          },
          itemBuilder: (context, index) {
            return ChangeNotifierProvider.value(
              value: foodtype[index],
              child: PacketCard(),
            );
          },
          itemCount: foodtype.length,
        ),
      ),
      
    );
  }
}
