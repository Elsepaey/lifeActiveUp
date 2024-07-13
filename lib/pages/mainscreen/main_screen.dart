import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navbar_router/navbar_router.dart';
import 'package:nutrifit/core/themes.dart';
import 'package:nutrifit/pages/mainscreen/mainscreencontroller.dart';

import '../../model/user controller.dart';
import '../profile/profile.dart';
import 'about.dart';
import 'appbar/appbar.dart';



class MainScreen extends StatelessWidget {
  MainScreenController controller = Get.put(MainScreenController());
  AppUserController userController = Get.find();

  MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
const SizedBox(height: 100,),
              DrawerHeader(child: Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(backgroundColor: MyTheme.primary_color,maxRadius: 30,child: const Icon(Icons.person,color: Colors.white,size: 40,),),const SizedBox(height: 10,),
const SizedBox(width: 12,),
                  Text(userController.fullName,textAlign: TextAlign.center,),
                ],
              )),
              ListTile(
                leading: Icon(Icons.person,color: Colors.grey,size: screenWidth/11,),
                title: const Text('Profile'),
                onTap: () {
                  // Navigate to profile page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
              ),
              const Divider(),

              ListTile(
                leading: Icon(Icons.info,color: Colors.grey,size: screenWidth/11,),
                title: const Text('About'),
                onTap: () {
                  // Navigate to about page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const About()),
                  );
                },
              ),
              const Divider(),

            ],
          ),),
      appBar: CustomAppBar(),
      body:  NavbarRouter(


        type: NavbarType.floating,

        errorBuilder: (context) {
      return const Center(child: Text('Error 404'));
    },
    onBackButtonPressed: (isExiting) {
    return isExiting;
    },
    destinationAnimationCurve: Curves.fastOutSlowIn,
    destinationAnimationDuration: 400,
    decoration:
    NavbarDecoration(navbarType: BottomNavigationBarType.shifting,backgroundColor: MyTheme.primary_color,height: screenHeight/15),
    destinations: [
    for (int i = 0; i <controller.navitems.length; i++)
    DestinationRouter(
    navbarItem: controller.navitems[i],
    destinations: [
    for (int j = 0; j < controller.routes[i]!.keys.length; j++)
    Destination(
    route: controller.routes[i]!.keys.elementAt(j),
    widget: controller.routes[i]!.values.elementAt(j),
    ),
    ],
    initialRoute: controller.routes[i]!.keys.first,
    ),
    ],

    ),

    );
  }
}
