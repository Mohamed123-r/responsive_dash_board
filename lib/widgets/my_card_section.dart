import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'dots_indicator.dart';
import 'my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int controllerPage = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(
      () {
        setState(() {
          controllerPage = pageController.page!.round();
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyles.styleSemiBold20(),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 20,
        ),
        DotsIndicator(
          controllerPage: controllerPage,
        )
      ],
    );
  }
}
