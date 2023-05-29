import 'package:flutter/material.dart';
import 'package:paycapp/theme/app_theme.dart';

class Greetings extends StatelessWidget {
  const Greetings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
      color: AppTheme.background,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 0.005, 
        horizontal: 0.08 ),
      child: const Text('Good morning,',
      style: TextStyle(
        color: Colors.white,
        fontSize: 27,
        fontWeight: FontWeight.w400,
      ),
      ));
  }
}