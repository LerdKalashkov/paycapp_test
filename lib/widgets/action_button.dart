import 'package:flutter/material.dart';

import 'package:paycapp/theme/app_theme.dart';
import 'package:paycapp/void/void.dart';

class ActionBox extends StatelessWidget {
  const ActionBox({
    super.key,
    required this.route,
  });

  final String route;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Expanded(
    child: GridView.count(
      physics: const BouncingScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 1.2,
      children: List.generate(4, (index) {
        return Container(                      
          margin: const EdgeInsets.all(15),
          decoration: _fotterSectionStyle(),
          child: _Button(
            route: route, 
            size: size, 
            index: index,),
          );
        }),
      ),
    );
  }

  BoxDecoration _fotterSectionStyle() {
    return const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color:  AppTheme.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color.fromRGBO(103, 103, 103, 0.094),
              blurRadius: 8,
      )],
    );
  }
}

class _Button extends StatelessWidget {
  final String route;
  final Size size;
  final int index;
  const _Button({
    required this.route,
    required this.size, required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        Navigator.pushNamed(context, route);
      }, 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Container(
          height: size.height * 0.08,
          width: size.width * 0.1,
          alignment: Alignment.center,
          decoration: _actionButtonStyle(),
          child: IconButton(
            icon: getIconWidget(index), 
            onPressed: () {
              Navigator.pushNamed<Object?>(context, route);
            },
          ),
        ),        
        _ContentButton(index: index)]
      ),
    );
  }

  BoxDecoration _actionButtonStyle() {
    return const BoxDecoration(
      color: AppTheme.gridBackground,
      borderRadius: BorderRadius.all(Radius.circular(18))
    );
  }
}


class _ContentButton extends StatelessWidget {
  const _ContentButton({
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Text(getTitle(index),
      style: const TextStyle(
      color: Colors.black,
      fontSize: 18,
        ),
      );
  }
}