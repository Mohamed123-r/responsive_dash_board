import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info%20_model.dart';
import 'package:responsive_dash_board/widgets/active_and_in_active_drawer_item.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';
import '../utils/app_images.dart';
import '../utils/size_config.dart';
import 'drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: MediaQuery.of(context).size.width <= SizeConfig.tablet
          ? EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.08)
          : EdgeInsets.zero,
      width: MediaQuery.of(context).size.width * 0.7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: UserInfoListTile(
                userInfoModel: UserInfoModel(
                  title: 'Lekan Okeowo',
                  subtitle: 'demo@gmail.com',
                  image: Assets.imagesAvatar3,
                ),
              ),
            ),
          ),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: 'Setting system',
                      image: Assets.imagesSettings,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: 'Logout account',
                      image: Assets.imagesLogout,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
