import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/widgets/transaction_history_item.dart';

import '../models/transaction_history_model.dart';

class TransactionHistoryListview extends StatelessWidget {
  const TransactionHistoryListview({super.key});

  static const items = [
    TransactionHistoryModel(
      title: "Cash Withdrawal",
      date: "13 April 2022",
      price: "\$250",
      isWithdrawal: true,
    ),
    TransactionHistoryModel(
      title: "Landing Page project",
      date: "13 April 2022",
      price: "\$2000",
      isWithdrawal: false,
    ),
    TransactionHistoryModel(
      title: "Juni Mobile App project",
      date: "13 April 2022",
      price: "\$20,127",
      isWithdrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return TransactionHistoryItem(
          transactionHistoryModel: items[index],
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 12,
        );
      },
    );
  }
}
