import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/sign_up/registring_controller.dart';
import 'package:nutrifit/pages/log_in/sign_in.dart';
import 'package:nutrifit/pages/widgets/widgets.dart';

class Register extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final controller = Get.put(RegisterController());

  Register({super.key});


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(
            top: screenHeight / 8,
            bottom: screenHeight / 17,
            right: screenWidth / 25,
            left: screenWidth / 25),
        color: const Color(0xff52D1C6),
        child: SingleChildScrollView(
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
                  "Let's Get Started",
                  style: TextStyle(
                      fontSize: screenWidth / 23,
                      color: Colors.black,
                      inherit: false),
                ),
              ),
              Center(
                child: Text(
                  "Create an new account",
                  style: TextStyle(
                      fontSize: screenWidth / 25,
                      color: Colors.white,
                      inherit: false),
                ),
              ),
              SizedBox(
                height: screenHeight / 12,
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    CustomWidgets.customTextFormField(
                        icon: const Icon(Icons.person),
                        label: "Your Full Name",
                        onChanged: (value) => controller.setFullName(value!),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        }),
                    SizedBox(
                      height: screenHeight / 90,
                    ),
                    CustomWidgets.customTextFormField(
                        icon: const Icon(Icons.email),
                        label: "Your Email",
                        isEmail: true,
                        onChanged: (value) => controller.setEmail(value!),
                        validator: (value) {
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
                      height: screenHeight / 90,
                    ),
                    GetBuilder<RegisterController>(
                        init: RegisterController(),
                        builder: (controller) {
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
                              onChanged: (value) =>
                                  controller.setPassword(value!),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                }

                                if (value.length < 8) {
                                  return 'Password must be at least 8 characters';
                                }

                                return null;
                              });
                        }),
                    SizedBox(
                      height: screenHeight / 90,
                    ),
                    GetBuilder<RegisterController>(builder: (controller) {
                      return CustomWidgets.customTextFormField(
                        obscure: controller.obsecure,
                        icon: const Icon(Icons.lock),
                        label: "Your Password Again",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password again';
                          }
                          if(value !=controller.password.value  )
                            {
                              return 'passwords are different';
                            }
                          return null;
                        },
                      );
                    })
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight / 14,
              ),
              Container(
                  height: screenHeight / 20,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 3, color: Colors.white)),
                  child: MaterialButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          controller.register(context);
                        }
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: screenWidth / 20, color: Colors.white),
                      ))),
              SizedBox(
                height: screenHeight / 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "have an account? ",
                    style: TextStyle(
                        fontSize: screenWidth / 28, color: Colors.white),
                  ),
                  InkWell(
                    onTap: () {
                      Get.off(Sign_In());
                    },
                    child: Text("Sign in",
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
      ),
    );
  }
}
