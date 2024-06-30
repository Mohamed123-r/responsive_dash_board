import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../generated/assets.dart';
import '../utils/app_styles.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xff4EB7F2),
          image: const DecorationImage(
            image: AssetImage(Assets.imagesCardBackground),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              titleAlignment: ListTileTitleAlignment.center,
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16(context).copyWith(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'Card holder',
                style: AppStyles.styleMedium20(context).copyWith(color: Colors.white),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery,
              ),
            ),
            const Spacer(),
            Directionality(
              textDirection: TextDirection.rtl,
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  '0918 8124 0042 8129',
                  style: AppStyles.styleSemiBold24(context).copyWith(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  '12/20 - 124',
                  style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
