import 'package:alarm/alarm.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/middleware/AuthMiddleware.dart';
import 'package:nutrifit/middleware/intro.dart';
import 'package:nutrifit/pages/Questioning/Questioning.dart';
import 'package:nutrifit/pages/foodcalender/foodlog.dart';
import 'package:nutrifit/pages/mainscreen/main_screen.dart';
import 'package:nutrifit/pages/meals/explore_meals/mealsview.dart';
import 'package:nutrifit/pages/meals/view.dart';
import 'package:nutrifit/pages/profile/profile.dart';
import 'package:nutrifit/pages/sign_up/register.dart';
import 'package:nutrifit/pages/log_in/sign_in.dart';
import 'package:nutrifit/pages/splash/splash-view.dart';
import 'package:nutrifit/pages/stepcounter/step_counter_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'model/user controller.dart';

SharedPreferences? sharedPref;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyA5Kdc3uQpNL09MgSsWMCAawgOmo3IVAd8',
          appId: '1:1042020173390:android:b00fc5aa7b1701b252e51f',
          projectId: 'lifeactiveup', messagingSenderId: '1042020173390'));
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  // Get the token
  String? token = await messaging.getToken();
  print("FCM Registration Token: $token");

  sharedPref=await SharedPreferences.getInstance();
  await Alarm.init();
  runApp(const MyApp());
}

class DefaultFirebaseOptions {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      initialBinding: BindingsBuilder(() {
        Get.put(AppUserController(), permanent: true);

      }),
      getPages: [
        GetPage(name: "/splash", page: () => Splash(),middlewares: [AuthMiddleware()]),
        GetPage(name: "/sign_in", page: () => Sign_In()),
        GetPage(name: "/register", page: () => Register()),
        GetPage(name: "/questioning", page: () => Questioning()),
        GetPage(name: "/home", page: ()=> MainScreen()),
        GetPage(name: "/intro", page: ()=>const Intro()),
        GetPage(name: "/foodLog", page: ()=>Foodlog()),
        GetPage(name: "/profile", page: ()=>Profile()),
        GetPage(name: "/meals", page: ()=>Meals()),
        GetPage(name: "/viewmeals", page: ()=>ViewMeals())

      ],
      title: 'Flutter Demo',
      theme: ThemeData(),
      //home: const Splash(),
    );
  }
}
