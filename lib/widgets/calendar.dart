import 'package:flutter/material.dart';
import 'package:paycapp/theme/app_theme.dart';

// ignore: must_be_immutable
class Calendar extends StatelessWidget {
  final String route;
  Color color = AppTheme.black;

  Calendar({super.key, 
  required this.color, 
  required this.route,

  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return IconButton(
      highlightColor: const Color.fromARGB(0, 255, 255, 255),
      splashColor: const Color.fromARGB(0, 255, 255, 255),
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      icon: Container(
          margin: EdgeInsets.all(size.height * 0.006),
          child: Image.asset(
            'assets/icons/calendar.png',
            color: color,
            scale: 0.5,
        )
      ),
    );
  }
}