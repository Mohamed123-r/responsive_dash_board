import 'package:flutter/material.dart';
import 'custom_drawer.dart';
import 'dash_board_mobile_layout.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
        children: [
          Expanded(flex: 2, child: CustomDrawer()),
          Expanded(
            flex: 5,
            child: DashBoardMobileLayout(),
          ),
        ],
    );
  }
}

