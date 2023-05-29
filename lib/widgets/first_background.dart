import 'package:flutter/material.dart';
import 'package:paycapp/theme/app_theme.dart';

class FirstBackgroundPart extends StatelessWidget {
  final Size size;

  const FirstBackgroundPart({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _firstBackgroundStyle(), 
      width: size.width * 1,
      height: size.height * 0.22,
    );
  }

  BoxDecoration _firstBackgroundStyle() {
    return BoxDecoration(
      color: AppTheme.background,
      border: Border.all(color: AppTheme.background), 
    );
  }
}