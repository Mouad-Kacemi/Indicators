import 'package:flutter/material.dart';
import 'package:indicators/providers/foodprovider.dart';
import 'package:indicators/providers/foodtype_provider.dart';
import 'package:indicators/screens/first.dart';
import 'package:indicators/screens/home.dart';
import 'package:indicators/screens/indicators.dart';
import 'package:indicators/screens/login.dart';
import 'package:flutter/services.dart';
import 'package:indicators/screens/menu.dart';
import 'package:indicators/screens/packet.dart';
import 'package:indicators/screens/profile.dart';
import 'package:indicators/screens/settings.dart';
import 'package:indicators/screens/signup.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<FoodProvider>(
            create: (context) => FoodProvider()),
        ChangeNotifierProvider<FoodTypeProvider>(
            create: ((context) => FoodTypeProvider()))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstPage(),
        theme: ThemeData(
          primaryColor: Colors.orange,
        ),
        routes: {
          '/login': (context) => const LoginPage(),
          '/indicators': (context) => const Indicators(),
          "/signup": (context) => const SignupPage(),
          "/home": (context) => const HomePage(),
          '/menu': (context) => const MenuPage(),
          "/settings": ((context) => const Settings()),
          "/packet": ((context) => const Packet()),
          '/profile': ((context) => const Profile()),
          "/nav": ((context) => Navigator())
        },
      ),
    ),
  );
}
