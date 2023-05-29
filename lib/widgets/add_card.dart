import 'package:flutter/material.dart';
import 'package:paycapp/theme/app_theme.dart';

class AddCard extends StatelessWidget {
  final String route;

  const AddCard({super.key, required this.route});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.07),
      child: _Add(route: route, size: size),
    );
  }
}

class _Add extends StatelessWidget {
  const _Add({
    required this.route,
    required this.size,
  });

  final String route;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        Navigator.pushNamed(context, route);
      },
      child: Container(
        alignment: Alignment.center,
        decoration: _addCardStyle(),
        height: size.height * 0.12,
        width: size.width * 0.175,
          child: IconButton(
            icon: Image.asset(
              width: 22,
              'assets/icons/add.png',
              color: Colors.white,
            ), 
          onPressed: () {
            Navigator.pushNamed(context, route);
          },
        ),
      ),
    );
  }

  BoxDecoration _addCardStyle() {
    return const BoxDecoration(
      color: AppTheme.purpleLight,
      borderRadius: BorderRadius.all(Radius.circular(10))
    );
  }
}