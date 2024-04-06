import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/view/sign_up/register.dart';
import 'package:nutrifit/view/log_in/sign_in.dart';

class Splash extends StatelessWidget {
  Splash({super.key});
  double screenHeight = 0;
  double screenWidth = 0;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
          top: screenHeight / 5,
          bottom: screenHeight / 16,
          right: screenWidth / 30,
          left: screenWidth / 30),
      color: const Color(0xff52D1C6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageIcon(
                const AssetImage(
                  "assets/icons/img.png",
                ),
                size: screenWidth / 8,
                color: Colors.white,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "LifeActiveUp",
                style: TextStyle(
                    fontSize: screenWidth / 12,
                    color: Colors.white,
                    inherit: false),
              ),
            ],
          ),
          const Image(
            image: AssetImage("assets/images/olive-oil-bottle.png"),
          ),
          SizedBox(
            height: screenHeight / 12,
          ),
          Container(
              height: screenHeight / 20,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 3, color: Colors.white)),
              child: MaterialButton(
                  onPressed: () {Get.off(()=>Sign_In());},
                  child: Text(
                    "Log In",
                    style: TextStyle(
                        fontSize: screenWidth / 20, color: Colors.white),
                  ))),
          SizedBox(
            height: screenHeight / 80,
          ),
          Container(
              height: screenHeight / 20,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: MaterialButton(
                  onPressed: () {Get.off(()=>Register());},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: screenWidth / 20,
                        color: const Color(0xff52D1C6)),
                  ))),
        ],
      ),
    );
  }
}
