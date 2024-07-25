import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weather_app/Screens/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context as BuildContext,
          MaterialPageRoute(builder: (context) {
        return HomeScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'images/1.png',
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            ' Weather',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Color(0xff272162),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const CircularProgressIndicator(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
