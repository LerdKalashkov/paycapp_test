import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/providers.dart';
import 'package:paycapp/theme/app_theme.dart';

// ignore: must_be_immutable
class Delete extends StatelessWidget {
   Color color = AppTheme.black;

  Delete({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    final delete = Provider.of<Balance>(context);

    Size size = MediaQuery.of(context).size;

    return IconButton(
      highlightColor: const Color.fromARGB(0, 255, 255, 255),
      splashColor: const Color.fromARGB(0, 255, 255, 255),
      onPressed: () {
       delete.removeBalance();
      },      
      icon: Container(
          height: size.height * 0.02,
          margin: EdgeInsets.all(size.height * 0.03),
          child: Image.asset(
            'assets/icons/delete.png',
            color: color,
            scale: 0.5,
        )
      ),
    );
  }
}