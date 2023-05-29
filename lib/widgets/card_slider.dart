import 'package:flutter/material.dart';
import 'package:paycapp/swiper/list_swiper.dart';

class CardSlider extends StatelessWidget {
  const CardSlider({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.only(
          left: size.width * 0.2,
        ),
        margin: EdgeInsets.only(
          left: size.width * 0.06,
        ),
        width: double.infinity,
        height: 250,
        child: Row(
          children:[ Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: imagepath.length,
              itemBuilder:( __ , index) {
            return Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10,            
              ),
            width: 170,
            height: 250,    
            child: imagepath[index],     
                );
                },),
          ),
         ]),
      ),
    );
  }
}