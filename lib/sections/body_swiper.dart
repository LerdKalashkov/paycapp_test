import 'package:flutter/material.dart';
import 'package:paycapp/widgets/widgets.dart';
import 'package:paycapp/theme/app_theme.dart';

class BodySwiper extends StatelessWidget {
  final String route;

  const BodySwiper({super.key, 
  required this.route
  
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        Container(
          decoration: _startBackgroundStyle(),
          width: size.width * 1,
          height: size.height * 0.2,
          child: Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.07,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Greetings(),
                Name(),
            ]),
          ),
        ),
        Stack(
          children: <Widget>[
            FirstBackgroundPart(size: size),
            SecondBackgroundPart(size: size),
            const CardSlider(),       
            const AddCard(
              route: 'payment',
            ),
          ],     
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 25,
            left: 25,
            right: 25,
          ),
          width: size.width * 1,
          height: size.height * 0.3743,
          decoration: _fotterStyle(),
            child: Column(
              children: <Widget>[
                const TitleFotter(),                    
                ActionBox(route: route),                 
            ],
          ),
        ),
      ],
    );
  }

  BoxDecoration _fotterStyle() {
    return const BoxDecoration(
            color: AppTheme.white,       
            );
  }

  BoxDecoration _startBackgroundStyle() {
    return const BoxDecoration(
        color: AppTheme.background,
        );
  }
}


