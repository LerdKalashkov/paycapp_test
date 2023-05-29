import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/providers.dart';

import 'package:paycapp/theme/app_theme.dart';
import 'package:paycapp/void/void.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({super.key,
  required this.size,

  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
              topLeft: Radius.circular(size.height * 0.035),
              topRight: Radius.circular(size.height * 0.035),
            ),
      child: Container(
        height: size.height * 0.4995,
        margin: const EdgeInsets.symmetric(horizontal: 40),
        color: AppTheme.white,
        child: const _Buttons(),
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1,             
        mainAxisSpacing: 15,
        crossAxisSpacing: 30,
        scrollDirection: Axis.vertical,
        physics:const NeverScrollableScrollPhysics(),
        children: List.generate(12, (index) {
          return getButtonContent(index);
        })
      ),
    );
  }
}

class Button extends StatelessWidget {
  final int index;
  final Widget content;
  final Function? action;
  final Widget? widget;

  const Button({super.key, 
  required this.index, 
  required this.content, 
  this.widget, 
  this.action, 
    }
  );

  @override
  Widget build(BuildContext context) {
    final value = Provider.of<Balance>(context);

    return InkWell(
      onTap: () {
        int i = index + 1;
        if(i == 11) i = 0;
        action;
        value.addBalance(i.toString());
      },
      child: Container(                                              
        decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(55)),
        color:  AppTheme.white,                          
          ),              
        child: content,
      ),
    );
  }
}




