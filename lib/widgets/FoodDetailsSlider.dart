import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class FoodDetailsSlider extends StatelessWidget {
  final String slideImage1;
  final String slideImage2;
  final String slideImage3;

  FoodDetailsSlider({
    Key key,
    this.slideImage1,
    this.slideImage2,
    this.slideImage3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
          child: Carousel(
        images: [
          Image.asset(
            slideImage1,
          ),
          /* Image.asset(
                slideImage2,
                height: double.infinity,
                width: double.infinity,
              ),
              Image.asset(
                slideImage3,
                height: double.infinity,
                width: double.infinity,
              ),*/
        ],
        boxFit: BoxFit.cover,
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 6.0,
        dotIncreasedColor: Color(0xFFFF335C),
        dotBgColor: Colors.transparent,
        dotPosition: DotPosition.topRight,
        dotVerticalPadding: 10.0,
        showIndicator: true,
        indicatorBgPadding: 7.0,
      )),
    );
  }
}
