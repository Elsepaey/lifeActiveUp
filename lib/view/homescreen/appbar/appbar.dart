
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/view/homescreen/appbar/appbarcontroller.dart';

import '../../../core/themes.dart';

class CustomAppBar extends StatelessWidget  implements PreferredSizeWidget{
AppBarController controller=Get.put(AppBarController());
   CustomAppBar({super.key, });
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return GetX<AppBarController>(builder: (controller)=>      AppBar(
      backgroundColor: MyTheme.primary_color,
      title:controller.isSearching.value ? _buildSearchField() : Row(
        children: [
          ImageIcon(
            const AssetImage(
              "assets/icons/img.png",
            ),
            size: screenWidth / 16,
            color: Colors.white,
          ),
          const SizedBox(
            width: 5,
          ),
          Text('NutriFit',style: TextStyle(color: MyTheme.w),),
        ],
      ),
      actions: _buildAppBarActions(),
    )
    );
  }

  Widget _buildSearchField() {
    return Expanded(
      child: TextField(
        autofocus: true,
        decoration: InputDecoration(
          hintText: 'Search...',
          border: InputBorder.none,
          suffixIcon: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              controller.isSearching.value=false;

            },
          ),
        ),
      ),
    );
  }

  List<Widget> _buildAppBarActions() {
    return [
      IconButton(
        icon: Icon(Icons.search,color: Colors.white,),
        onPressed: () {
          controller.isSearching.value=true;

        },
      ),

      IconButton(
        icon: Icon(Icons.notifications,color: Colors.white,),
        onPressed: () {
          // Handle notification icon press
        },
      ),




    ];
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}