import 'package:flutter/material.dart';
import 'all_expanses_end_quick_invoice_section.dart';
import 'custom_drawer.dart';
import 'my_card_and_income_section.dart';

class DashBoardTablet extends StatelessWidget {
  const DashBoardTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF7F9FA),
      body: Row(
        children: [
          Expanded(flex: 2, child: CustomDrawer()),
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AllExpansesAndQuickInvoiceSection(),
                    MyCardAndIncomeSection(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
