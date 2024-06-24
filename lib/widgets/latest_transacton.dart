import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import 'latest_transaction_list_view_item.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: AppStyles.styleMedium16(),
        ),
        const SizedBox(
          height: 12,
        ),
        const LatestTransactionListViewItem(),
      ],
    );
  }
}


