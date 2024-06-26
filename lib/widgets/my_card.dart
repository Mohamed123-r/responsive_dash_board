import 'package:flutter/material.dart';
import 'custom_background_container.dart';
import 'my_card_section.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCardSection(),
        ],
      ),
    );
  }
}

