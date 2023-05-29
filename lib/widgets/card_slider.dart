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
        height: size.height * 0.29,
        padding: EdgeInsets.only(left: size.width * 0.2,),
        margin: EdgeInsets.only(left: size.width * 0.06,),
        child: const _CardSwiper(),
      ),
    );
  }
}

class _CardSwiper extends StatelessWidget {
  const _CardSwiper();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children:[ Expanded(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: imagepath.length,
          itemBuilder:( __ , index) {
        return Container(
          child: imagepath[index],     
          width: size.width * 0.42,   
          margin: const EdgeInsets.symmetric(
            horizontal: 10,            
            ),
          );
        }),
      ),
    ]);
  }
}