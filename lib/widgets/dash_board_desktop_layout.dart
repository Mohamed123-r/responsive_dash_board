import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF7F9FA),
      body: Row(
        children: [
          Expanded(
            child: CustomDrawer(),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Expanded(
                    child: AllExpenses(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
