import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';
import '../utils/app_images.dart';
import 'drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: UserInfoListTile(
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
              image: Assets.imagesAvatar3,
            ),
          ),
          DrawerItemListView(),
        ],
      ),
    );
  }
}
