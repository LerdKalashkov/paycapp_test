import 'package:flutter/material.dart';
import 'package:paycapp/theme/app_theme.dart';



class AddCard extends StatelessWidget {
  final String route;

  const AddCard({super.key, required this.route});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: InkWell(
        onTap:(){
                Navigator.pushNamed(context, route);
      },
        child: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: AppTheme.purpleLight,
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          height: 100,
          width: 70,
            child: IconButton(
              icon: Image.asset(
                width: 22,
                'assets/icons/add.png',
                color: Colors.white,
              ), onPressed: () {
                        Navigator.pushNamed(context, route);

               },
            ),
          ),
      ),
      );
    
  }
}