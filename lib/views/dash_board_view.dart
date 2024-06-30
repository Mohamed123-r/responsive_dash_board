import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/widgets/dash_board_desktop_layout.dart';
import 'package:responsive_dash_board/widgets/dash_board_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/dash_board_tablet.dart';
import '../widgets/custom_drawer.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:
          MediaQuery.of(context).size.width < SizeConfig.tablet ? const CustomDrawer() : null,
      appBar: MediaQuery.of(context).size.width < SizeConfig.tablet
          ? AppBar(
              backgroundColor: Colors.white,
            )
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
