import 'package:flutter/material.dart';

class Arrow extends StatelessWidget {
  final String route;

  const Arrow({super.key, 
  required this.route
  
  });


  @override
  Widget build(BuildContext context) {
    return IconButton(
      highlightColor: const Color.fromARGB(0, 255, 255, 255),
      splashColor: const Color.fromARGB(0, 255, 255, 255),
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      icon: Container(
          height: 15,
          margin: const EdgeInsets.all(7),
          child: Image.asset(
            'assets/icons/arrow.png',
            color: Colors.white,
            scale: 10,
          )
      ),
    );
  }
}