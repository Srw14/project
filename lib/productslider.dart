import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class productslider extends StatelessWidget {
  const productslider({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor: Color(0xFFBD3944),
      indicatorBackgroundColor: Color.fromARGB(255, 255, 255, 255),
      height: 500,
      autoPlayInterval: 5000,
      indicatorRadius: 4,
      isLoop: true,
      children: [
         Padding(
          padding: EdgeInsets.only(top: 10,bottom: 110),
          child: Image.asset("assets/images/p1.jpg"),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10,bottom: 110),
          child: Image.asset("assets/images/p2.jpg"),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10,bottom: 110),
          child: Image.asset("assets/images/p3.jpg"),
        ),
      ],
    );
  }
}