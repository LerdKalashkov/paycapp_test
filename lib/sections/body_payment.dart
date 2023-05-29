import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:paycapp/providers/balance_provider.dart';

import 'package:paycapp/widgets/widgets.dart';
import 'package:paycapp/theme/app_theme.dart';

class BodyPayment extends StatelessWidget {
  const BodyPayment({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<Balance>(
      create: (_)=>  Balance(),     
      child: Column(
        children: <Widget>[
          TopSection(size: size),        
          Stack(
            children: <Widget>[
              DescriptionSection(size: size),
              KeyboardSection(size: size, balance: '',), 
          ])      
        ]
      ),
    );
  }
}

class KeyboardSection extends StatelessWidget {
  final String balance;

  const KeyboardSection({super.key,
    required this.size,
    required this.balance,

  });

  final Size size;

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(
        top: size.height * 0.06),
        width: size.width * 1,
        height: size.height * 0.5995,
        decoration: _keyboardSectionStyle(),
        child: Column(
          children: <Widget>[  
            Keyboard(size: size),
            const FotterSection(),   
        ]
      ),
    );
  }

  BoxDecoration _keyboardSectionStyle() {
    return BoxDecoration(
      color: AppTheme.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(size.height * 0.035),
          topRight: Radius.circular(size.height * 0.035),
      )
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppTheme.background,
        border: null,
      ),
      width: size.width * 1,
      height: size.height * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Align(
            alignment: Alignment.center,
            child: Avatar(
              size: 45, 
              radius: 17, 
              route: 'swiper',
            )
          ),
          SectionName(size: size),
          SectionBalance(size: size),
        ]),
    );
  }
}

class FotterSection extends StatelessWidget {
  const FotterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: AppTheme.white,
        child: Container(
          margin: const EdgeInsets.only(
            bottom: 20,
            left: 20,
            right: 20,
            top: 10,
          ),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: <Widget>[
          Calendar(
            color:AppTheme.grey,
            route: 'swiper',
            ),
          const ContinueButton()      
          ],),
        ),
      ),
    );
  }
}

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: AppTheme.background,
          border: Border.all(color: AppTheme.background), 
        ), 
        width: size.width * 1,
        height: size.height * 0.12,
    );
  }
}
