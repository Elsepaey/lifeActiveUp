import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/themes.dart';
import 'appbarcontroller.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  AppBarController controller = Get.put(AppBarController());
  CustomAppBar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return
      AppBar(
          forceMaterialTransparency: true,
              iconTheme: const IconThemeData(color: Colors.black),

              title:
                   Row(
                      children: [
                        ImageIcon(
                          const AssetImage(
                            "assets/icons/img.png",
                          ),
                          size: screenWidth / 15,
                          color: MyTheme.primary_color,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'LifeActiveUp',
                          style: TextStyle(
                              color: MyTheme.primary_color, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
              actions: _buildAppBarActions(),
            );
  }

  Widget _buildSearchField() {
    return TextField(
      autofocus: true,
      decoration: InputDecoration(
        hintText: 'Search...',
        border: InputBorder.none,
        suffixIcon: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            controller.isSearching.value = false;
          },
        ),
      ),
    );
  }

  List<Widget> _buildAppBarActions() {
    return [

      IconButton(
        icon: const Icon(
          Icons.notifications,
          color: Colors.black,
        ),
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
