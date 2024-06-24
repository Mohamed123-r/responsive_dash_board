import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/user_info%20_model.dart';
import '../utils/app_styles.dart';

class LatestTransactionItem extends StatelessWidget {
  const LatestTransactionItem({super.key, required this.userInfoModel});

  final UserInfoModel userInfoModel ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xffFAFAFA),
      ),
      child: Center(
        child: ListTile(
            leading: SvgPicture.asset(
              userInfoModel.image,
              width: 45,
              height: 45,
            ),
            title: Text(
              userInfoModel.title,
              style: AppStyles.styleSemiBold16(),
            ),
            subtitle: Text(
              userInfoModel.subtitle,
              style: AppStyles.styleRegular12(),
            )),
      ),
    );
  }
}
