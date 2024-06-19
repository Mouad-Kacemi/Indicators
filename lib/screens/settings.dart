import 'package:flutter/material.dart';
import 'package:indicators/helpers/ColorsSys.dart';
import 'package:indicators/screens/home.dart';
import 'package:indicators/screens/packet.dart';
import 'package:indicators/screens/profile.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});
  static String route = '/settings';

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
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
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
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
                height: 50,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Icon(
                        Icons.edit_note_rounded,
                        color: Colors.orange,
                        size: 35,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'Edit Profile',
                        style: TextStyle(
                            color: ColorSys.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )),
            Container(
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
                height: 50,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Icon(
                        Icons.notifications_active_rounded,
                        color: Colors.orange,
                        size: 30,
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text(
                        'Notifications',
                        style: TextStyle(
                            color: ColorSys.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )),
            Container(
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
                height: 50,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Icon(
                        Icons.password_rounded,
                        color: Colors.orange,
                        size: 35,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'Change Password',
                        style: TextStyle(
                            color: ColorSys.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )),
            Container(
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
                height: 50,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Icon(
                        Icons.help_center_rounded,
                        color: Colors.orange,
                        size: 35,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'Help & Support',
                        style: TextStyle(
                            color: ColorSys.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )),
            Container(
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
                height: 50,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Icon(
                        Icons.feedback_rounded,
                        color: Colors.orange,
                        size: 30,
                      ),
                      SizedBox(
                        width: 56,
                      ),
                      Text(
                        'Feedback',
                        style: TextStyle(
                            color: ColorSys.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
