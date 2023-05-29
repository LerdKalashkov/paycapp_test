import 'package:flutter/material.dart';

class Name extends StatelessWidget {
  const Name({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 0.08, 
        top: 0.005, 
        bottom: 0.1),
      child: const Text('Ashley',
      style: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold
        ),
      )
    );
  }
}