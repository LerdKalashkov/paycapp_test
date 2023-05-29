import 'package:flutter/material.dart';

import 'package:paycapp/theme/app_theme.dart';


class SecondBackgroundPart extends StatelessWidget {
  const SecondBackgroundPart({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 1,
      height: size.height * 0.11,
      decoration: _secondBackgroundStyle(),
      margin: EdgeInsets.only(top: size.height * 0.18),
    );
  }

  BoxDecoration _secondBackgroundStyle() {
    return BoxDecoration(
    color: AppTheme.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(size.height * 0.035),
        topRight: Radius.circular(size.height * 0.035),
      )
    );
  }
}