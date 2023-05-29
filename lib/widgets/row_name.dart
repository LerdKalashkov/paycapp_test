import 'package:flutter/material.dart';

import 'package:paycapp/theme/app_theme.dart';

class SectionName extends StatelessWidget {
  const SectionName({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: _sectionNameStyle(),
      padding:    EdgeInsets.only(bottom: size.height * 0.01),
      child: const _RowSectionName()
    );
  }

  BoxDecoration _sectionNameStyle() {
    return const BoxDecoration(
    border: null,
    color: AppTheme.background,
    );
  }
}

class _RowSectionName extends StatelessWidget {
  const _RowSectionName();

  @override
  Widget build(BuildContext context) {
    return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [  
        Text('Sending money to ',
          style: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w400,
          ),
        ),
        Text('Jessica',
        style: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w600,
            ),
          ),
        ]
      );
  }
}