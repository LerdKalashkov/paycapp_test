import 'package:flutter/material.dart';

import 'package:paycapp/widgets/widgets.dart';
import 'package:paycapp/theme/app_theme.dart';


class TextContent extends StatelessWidget {
  final String content;
  
  const TextContent({super.key, 
    required this.content
    });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(content,
            style:  const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              ),   
      ),
    );
  }
}

Widget getButtonContent(int index) {
  switch (index) {
    case 0:  return Button(index: index, content: const TextContent(content: '1'));
    case 1:  return Button(index: index, content: const TextContent(content: '2'));
    case 2:  return Button(index: index, content: const TextContent(content: '3'));
    case 3:  return Button(index: index, content: const TextContent(content: '4'));
    case 4:  return Button(index: index, content: const TextContent(content: '5'));
    case 5:  return Button(index: index, content: const TextContent(content: '6'));
    case 6:  return Button(index: index, content: const TextContent(content: '7'));
    case 7:  return Button(index: index, content: const TextContent(content: '8'));
    case 8:  return Button(index: index, content: const TextContent(content: '9'));
    case 9:  return Container();
    case 10: return Button(index: index, content: const TextContent(content: '0'));
    case 11: return Button(index: index, content: Delete(color: AppTheme.black,));
    default:
      return Button(index: index, content: const TextContent(content: '?'));
  }
} 