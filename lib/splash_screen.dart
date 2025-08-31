import 'package:flutter/material.dart';
import 'calculator/mian_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MainPage()),
            );
          },
          child: Image.asset(
            'assets/icon/calcicon.png',
            width: 150,
            height: 150,
          ),
        ),
      ),
    );
  }
}