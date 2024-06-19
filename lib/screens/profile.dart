import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:indicators/helpers/ColorsSys.dart';
import 'package:indicators/screens/home.dart';
import 'package:indicators/screens/packet.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});
  static String route = "/profile";

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35))),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              child: Transform.translate(
                offset: Offset(MediaQuery.of(context).size.width * 0.42, 120),
                child: Text(
                  "Profile",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Column(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.library_books_rounded,
                            color: Colors.orange,
                            size: 35,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Your Orders',
                            style: TextStyle(
                              color: ColorSys.primary,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_rounded,
                            color: Colors.orange,
                            size: 35,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Address Info',
                            style: TextStyle(
                              color: ColorSys.primary,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.payment_rounded,
                            color: Colors.orange,
                            size: 35,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Payment Info',
                            style: TextStyle(
                              color: ColorSys.primary,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.logout_rounded,
                            color: Colors.orange,
                            size: 35,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Logout',
                            style: TextStyle(
                              color: ColorSys.primary,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
        Transform.translate(
          offset: Offset(80, 250),
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 80,
                    ),
                    Icon(
                      Icons.account_circle_rounded,
                      size: 70,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          color: Colors.orange,
                        ))
                  ],
                ),
                Text(
                  'Mouad',
                  style: TextStyle(
                      color: ColorSys.primary,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'mouadkacemi18@gmail.com',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ]),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 211, 210, 208),
                      blurRadius: 10,
                      spreadRadius: 1.0,
                      offset: const Offset(4.0, 4.0))
                ]),
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.2,
          ),
        )
      ]),
      
    );
  }
}
