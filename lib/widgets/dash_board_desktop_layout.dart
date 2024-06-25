import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'all_expanses_end_quick_invoice_section.dart';
import 'my_card.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF7F9FA),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: CustomDrawer(),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(32.0),
              child: AllExpansesAndQuickInvoiceSection(),
            ),
          ),
          Expanded(
            flex: 3,
            child: MyCard(),
          ),
        ],
      ),
    );
  }
}

