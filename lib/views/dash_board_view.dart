import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/widgets/dash_board_desktop_layout.dart';
import 'package:responsive_dash_board/widgets/dash_board_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/dash_board_tablet.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Color(0xffF7F9FA),
        body: AdaptiveLayout(
          mobileLayout: (context) => const DashBoardMobileLayout(),
          tabletLayout: (context) => const DashBoardTablet(),
          desktopLayout: (context) => const DashBoardDesktopLayout(),
        ),
      );


  }
}
