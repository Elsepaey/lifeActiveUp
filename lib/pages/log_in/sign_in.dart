import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/log_in/signing_controller.dart';
import 'package:nutrifit/pages/sign_up/register.dart';
import 'package:nutrifit/pages/widgets/widgets.dart';

class Sign_In extends StatelessWidget {
  var controller = Get.put(SigningController());
  final formKey = GlobalKey<FormState>();

  double screenHeight = 0;
  double screenWidth = 0;

  Sign_In({super.key});

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(
            top: screenHeight / 8,
            bottom: screenHeight / 17,
            right: screenWidth / 25,
            left: screenWidth / 25),
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
            Center(
              child: Text(
                "Welcome To LifeActiveUp",
                style: TextStyle(
                    fontSize: screenWidth / 23,
                    color: Colors.black,
                    inherit: false),
              ),
            ),
            Center(
              child: Text(
                "Sign in to continue",
                style: TextStyle(
                    fontSize: screenWidth / 25,
                    color: Colors.white,
                    inherit: false),
              ),
            ),
            SizedBox(
              height: screenHeight / 7,
            ),
            Form(
              key: formKey,
                child: Column(children: [
              CustomWidgets.customTextFormField(

                  icon: const Icon(Icons.email),
                  label: "Your Email",
                  isEmail: true,
                  onChanged: (value){controller.setEmail(value!);}, validator: (value){
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }

                  String pattern =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp regex = RegExp(pattern);
                  if (!regex.hasMatch(value)) {
                    return 'Invalid email';
                  }
                  return null;

              }),
              SizedBox(
                height: screenHeight / 70,
              ),
              GetBuilder<SigningController>(builder: (controller) {
                return CustomWidgets.customTextFormField(
                    icon: const Icon(Icons.lock),
                    label: "Your Password",
                    isPassword: true,
                    obscure: controller.obsecure,
                    suffix: InkWell(
                      onTap: () {
                        controller.changeVisibility();
                      },
                      child: controller.obsecure
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                    onChanged: (value)=>controller.setPassword(value!), validator: (value){
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  if (value.length < 8) {
                    return 'Password must be at least 8 characters';
                  }

                  return null;
                });
              }),
            ])),
            SizedBox(
              height: screenHeight / 15,
            ),
            Container(
                height: screenHeight / 18,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 3, color: Colors.white)),
                child: MaterialButton(
                    onPressed: () {
                      if(formKey.currentState!.validate())
                        {
                          controller.signInWithEmailAndPassword(context);
                        }
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: screenWidth / 20, color: Colors.white),
                    ))),
            SizedBox(
              height: screenHeight / 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "don't have an account? ",
                  style: TextStyle(
                      fontSize: screenWidth / 28, color: Colors.white),
                ),
                InkWell(
                  onTap: () {
                    Get.off(Register());
                  },
                  child: Text("Register",
                      style: TextStyle(
                          fontSize: screenWidth / 26,
                          color: const Color(0xFF2C36DC),
                          fontWeight: FontWeight.bold)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
