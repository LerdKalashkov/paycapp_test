import 'package:flutter/material.dart';

import 'package:paycapp/sections/body_payment.dart';
import 'package:paycapp/widgets/widgets.dart';

class PaymentKeypad extends StatelessWidget {
  const PaymentKeypad({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: size.width * 0.23,
        toolbarHeight: size.height * 0.09,
        leading: const Arrow(route: 'swiper'),         
        flexibleSpace: UpperGrid(size: size),
      ),
      body: BodyPayment(size: size) 
    );
  }
}


