import 'package:flutter/material.dart';
import 'package:paycapp/theme/app_theme.dart';

// ignore: must_be_immutable
class Hamburger extends StatelessWidget {
   final String route; 
   Color color = AppTheme.black;

  Hamburger({super.key, 
  required this.color, 
  required this.route});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      highlightColor: const Color.fromARGB(0, 255, 255, 255),
      splashColor: const Color.fromARGB(0, 255, 255, 255),
      onPressed: () {
        Navigator.popAndPushNamed(context, route);
      },
      icon: Container(
        height: 11,
        margin: const EdgeInsets.all(7),
        child: Image.asset(
          'assets/icons/hamburger.png',
          color: color,
          scale: 0.5,
        )
      ),
    );
  }
}