import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/login');
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/welcomeBG.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Image.asset('images/logo-DarkBg-removebg-preview.png')),
      ),
    );
  }
}
