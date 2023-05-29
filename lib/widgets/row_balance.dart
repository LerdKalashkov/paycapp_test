import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/balance_provider.dart';

class SectionBalance extends StatelessWidget {
  final Size size;

  const SectionBalance({
    super.key,
    required this.size, 
  });


  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        top: size.height * 0.025, 
        bottom: 0.08,),
      child: _RowSectionBalance()
    );
  }
}

class _RowSectionBalance extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final balanceProvider = Provider.of<Balance>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [ 
        Container(
            margin: const EdgeInsets.only(
            bottom: 10,
            top: 5,
            ),
            child: 
          Text('\$', 
            style: _simbolStyle())
            ),   
          Text(balanceProvider.balanceList[0],
            style: _balanceStyle(),
          ),                  
        ]
      );
    }

  TextStyle _balanceStyle() {
    return const TextStyle(
          overflow: TextOverflow.fade,
          letterSpacing: 4,
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.w400
        );
  }

  TextStyle _simbolStyle() {
    return const TextStyle(
            letterSpacing: 4,
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.w400
        );
  }
}