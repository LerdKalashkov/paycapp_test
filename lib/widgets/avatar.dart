import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double size;
  final String route;
  final double radius;

  const Avatar({super.key,

  required this.size, 
  required this.radius, 
  required this.route

  });



  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: size,
      highlightColor: const Color.fromARGB(0, 255, 255, 255),
      splashColor: const Color.fromARGB(0, 255, 255, 255),
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      icon: ClipRRect(
         borderRadius: BorderRadius.all(Radius.circular(radius)),
        child: Image.asset(
          'assets/photos/girl.png',
        ),
      ),
    );
  }
}