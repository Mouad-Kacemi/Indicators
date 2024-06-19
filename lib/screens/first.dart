import 'package:flutter/material.dart';
import 'package:indicators/screens/indicators.dart';
import 'package:indicators/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  Future<bool> _checkFirstTimeOpen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstTime = prefs.getBool('first_time') ?? true;

    if (isFirstTime) {
      prefs.setBool('first_time', false);
      return true;
    } else {
      return false;
    }
  }

  @override
  void initState() {
    super.initState();
    _loadNextScreen();
  }

  void _loadNextScreen() async {
    // Show the image for 2 seconds
    await Future.delayed(Duration(seconds: 2));

    bool isFirstTime = await _checkFirstTimeOpen();

    // Navigate to the appropriate screen
    if (isFirstTime) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Indicators()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    }
  }

  Widget _showSplashContent() {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/splash.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _showSplashContent();
  }
}
