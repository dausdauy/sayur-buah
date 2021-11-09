import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselFoodWidget extends StatelessWidget {
  final List images = [
    "https://media.istockphoto.com/photos/food-background-with-assortment-of-fresh-organic-fruits-and-picture-id1203599963?k=20&m=1203599963&s=612x612&w=0&h=XY0PiCcaw1HShjCU9JgywVoY5JQC-lZnZfWqyyREOus=",
    "https://media.istockphoto.com/photos/different-multicolored-healthy-fruits-and-vegetables-picture-id1205289671?k=20&m=1205289671&s=612x612&w=0&h=wdqJqFHBcaZDnHxG0DjYL_gOqM0OTuNpP19BDX144uQ=",
    "https://media.istockphoto.com/photos/shopping-woman-buying-at-the-market-picture-id529128870?k=20&m=529128870&s=612x612&w=0&h=RCY04zAspAgtlWSOdDbKVhKJw_Dwv2aHK4BULYWxtGI=",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
        ),
        items: images.map((e) {
          return Card(
            elevation: 4.0,
            child: ClipRRect(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: Image.network(
                e,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
