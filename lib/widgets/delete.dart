import 'package:flutter/material.dart';
import 'package:paycapp/theme/app_theme.dart';

// ignore: must_be_immutable
class Delete extends StatelessWidget {
   Color color = AppTheme.black;

  Delete({super.key, required this.color});


  @override
  Widget build(BuildContext context) {
    return IconButton(
      highlightColor: const Color.fromARGB(0, 255, 255, 255),
      splashColor: const Color.fromARGB(0, 255, 255, 255),
      onPressed: () {},
      icon: Container(
          height: 18,
          margin: const EdgeInsets.all(7),
          child: Image.asset(
            'assets/icons/delete.png',
            color: color,
            scale: 0.5,
          )
      ),
    );
  }
}