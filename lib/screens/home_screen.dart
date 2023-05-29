import 'package:flutter/material.dart';
import 'package:paycapp/theme/app_theme.dart';
import 'package:paycapp/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: 
        FlexibleSpaceBar(
          titlePadding: EdgeInsets.only(
            left: size.width * 0.875,
            right: size.width * 0.008,
            bottom: size.width * 0.04
          ),
          title: GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 3,
              childAspectRatio: 1,             
              children: List.generate(12, (index) {
                return Container(                                              
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(55)),
                  color:  AppTheme.purpleLight,                          
                    ),              
                );
              })
          ),
        ),
        toolbarHeight: 85,
        leadingWidth: size.width * 0.23,
        elevation: 0,
        actions: const <Widget>[
          Avatar(
            size: 35, 
            radius: 14,
            route: 'payment',
            ),
          SizedBox(
            width: 20,
          )
        ],
        leading: Hamburger(
          route: 'payment',
          color: AppTheme.white,
        ),         
      ),
      body: const Body(
        route: 'payment',) 
    );
  }
}

//