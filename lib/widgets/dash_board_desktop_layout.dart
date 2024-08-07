import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/my_card_and_income_section.dart';
import 'all_expanses_end_quick_invoice_section.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: CustomDrawer(),
          ),
          Expanded(
            flex: 8,
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: EdgeInsets.all(24.0),
                      child: AllExpansesAndQuickInvoiceSection(),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(right: 24, bottom: 24),
                      child: MyCardAndIncomeSection(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
    );
  }
}
