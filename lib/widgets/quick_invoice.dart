import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/latest_transacton.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';
import 'custom_background_container.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
        ],
      ),
    );
  }
}
