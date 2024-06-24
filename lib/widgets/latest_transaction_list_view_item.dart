import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info%20_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'latest_transaction_item.dart';

class LatestTransactionListViewItem extends StatelessWidget {
  const LatestTransactionListViewItem({super.key});

  static const items = [
    UserInfoModel(
      title: "Madrani Andi",
      subtitle: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar1,
    ),
    UserInfoModel(
      title: "Josua Nunito",
      subtitle: 'Josh Nunito@gmail.com',
      image: Assets.imagesAvatar2,
    ),
    UserInfoModel(
      title: "Madrani Andi",
      subtitle: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar3,
    ),
    UserInfoModel(
      title: "Madrani Andi",
      subtitle: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar2,
    ),
    UserInfoModel(
      title: "Madrani Andi",
      subtitle: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: LatestTransactionItem(
              userInfoModel: items[index],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 12,
          );
        },
      ),
    );
  }
}
