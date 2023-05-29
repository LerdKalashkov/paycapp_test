import 'package:flutter/material.dart';
import 'package:paycapp/theme/app_theme.dart';

class TitleFotter extends StatelessWidget {
  const TitleFotter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: const Text('Actions',
        style: TextStyle(
        color: AppTheme.black,
        fontSize: 22,
        fontWeight: FontWeight.w600, 
        ), 
      ),
    );
  }
}