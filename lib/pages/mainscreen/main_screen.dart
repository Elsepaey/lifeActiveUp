import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navbar_router/navbar_router.dart';
import 'package:nutrifit/core/themes.dart';
import 'package:nutrifit/pages/mainscreen/mainscreencontroller.dart';

import 'appbar/appbar.dart';



class MainScreen extends StatelessWidget {
  MainScreenController controller = Get.put(MainScreenController());

  MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: const Drawer(),
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
