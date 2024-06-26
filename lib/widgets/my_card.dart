import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import 'CustomCard.dart';
import 'custom_background_container.dart';
import 'my_card_page_view.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My card',
            style: AppStyles.styleSemiBold20(),
          ),
          const SizedBox(
            height: 20,
          ),
          const MyCardPageView(),
        ],
      ),
    );
  }
}

