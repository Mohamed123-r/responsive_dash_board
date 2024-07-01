import 'package:flutter/material.dart';

import 'all_expanses_end_quick_invoice_section.dart';
import 'my_card_and_income_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            AllExpansesAndQuickInvoiceSection(),
            MyCardAndIncomeSection(),
          ],
        ),
      ),
    );
  }
}
