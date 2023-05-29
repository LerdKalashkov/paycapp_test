import 'package:flutter/material.dart';
import 'package:paycapp/theme/app_theme.dart';

Widget getIconWidget(int index) {
  switch (index) {
    case 0:
      return Image.asset(
              width: 20,
              'assets/icons/telegram.png',
              color: AppTheme.gridIcon,
              );
    case 1:
      return Image.asset(
              width: 26,
              'assets/icons/contact.png',
              color: AppTheme.gridIcon,
              );
    case 2:
      return Image.asset(
              width: 21,
              'assets/icons/wallet.jpg',
              color: AppTheme.gridIcon,
              );
    case 3:
      return Image.asset(
              width: 22,
              'assets/icons/bill.jpg',
              color: AppTheme.gridIcon,
              );
    default:
      return Image.asset(
              width: 30,
              'assets/icons/contact.png',
              color: AppTheme.gridIcon,
              );
  }
}

String getTitle(int index) {
  switch (index) {
    case 0:
      return 'Send money';
    case 1:
      return 'Request money';
    case 2:
      return 'Check wallet';
    case 3:
      return 'Pending Bill';
    default:
      return 'No found';
  }
}