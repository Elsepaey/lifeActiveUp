import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/hompage/homePageController.dart';

class HomePage extends StatelessWidget {
  final HomeController controller=Get.put(HomeController());
   HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(padding: EdgeInsets.all(16),
    child: SingleChildScrollView(child: Column(children: [
      CarouselSlider(

        options: CarouselOptions(height: screenHeight/6,autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: true,
          scrollDirection: Axis.horizontal,
          pauseAutoPlayOnTouch: true,
          autoPlayAnimationDuration: Duration(seconds: 2),),

        items: controller.sliderImages.map((image) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: screenWidth,
                 margin: EdgeInsets.symmetric(horizontal: 6.0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),

                  child: Image(image: image,fit: BoxFit.fill,)
              );
            },
          );
        }).toList(),
      )
    ],),),);
  }
}
