import 'package:flutter/material.dart';

import 'package:paycapp/widgets/widgets.dart';
import 'package:paycapp/sections/body_swiper.dart';
import 'package:paycapp/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.height * 0.09,
        leadingWidth: size.width * 0.23,
        elevation: 0,
        flexibleSpace: UpperGrid(size: size),
        leading:  Hamburger(color: AppTheme.white, route: 'payment',),         
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 18),
            child: Avatar(
              size: 35,
              radius: 14, 
              route: 'payment', 
            ),
          ),
        ],
      ),
      body: const BodySwiper(route: 'payment',) 
    );
  }
}