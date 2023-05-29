import 'package:flutter/material.dart';
import 'package:paycapp/screens/screens.dart';
import 'package:paycapp/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Paycapp',
      theme: AppTheme.lightTheme,
      initialRoute: 'payment',
      routes: {
        'swiper'  : ( _ ) => const HomeScreen(),
        'payment' : ( _ ) => const PaymentKeypad(), 
      },
    );
  }
}



