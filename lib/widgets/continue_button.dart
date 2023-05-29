import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/providers.dart';

import 'package:paycapp/theme/app_theme.dart';


class ContinueButton extends StatelessWidget {
  const ContinueButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final resetBalance = Provider.of<Balance>(context);
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(left: size.width * 0.05,),
      child: InkWell(
        onTap: () {
          resetBalance.setterBalance();
        },
        child: const _ContinueButton(),
      ),
    );
  }
}

class _ContinueButton extends StatelessWidget {
  const _ContinueButton();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(55)),
      child: Container(  
        width: 270,
        color: AppTheme.icons,
        child: Align(
          alignment: Alignment.center,
          child: Text('Continue',
          style: _continueButtonStyle(),
          )),
      ),
    );
  }

  TextStyle _continueButtonStyle() {
    return const TextStyle(
      color: AppTheme.white,
      fontWeight: FontWeight.w700,
      fontSize: 15,
    );
  }
}