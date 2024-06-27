import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';
import 'all_expenses.dart';

class AllExpansesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpansesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
      ],
    );
  }
}
