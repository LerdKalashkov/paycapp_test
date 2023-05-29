import 'package:flutter/material.dart';
import 'package:paycapp/theme/app_theme.dart';

class UpperGrid extends StatelessWidget {
  const UpperGrid({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
    titlePadding: EdgeInsets.only(
      left: size.width * 0.875,
      right: size.width * 0.008,
      bottom: size.width * 0.04
    ),
    title: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 3,
        childAspectRatio: 1,             
        children: List.generate(12, (index) {
          return const _PointsGrid();
        })
      ),
    );
  }
}

class _PointsGrid extends StatelessWidget {
  const _PointsGrid();

  @override
  Widget build(BuildContext context) {
    return Container(                                              
      margin: const EdgeInsets.all(5),
      decoration: _pointsGridStyle(),              
    );
  }

  BoxDecoration _pointsGridStyle() {
    return const BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(55)),
    color:  AppTheme.purpleLight,                          
    );
  }
}