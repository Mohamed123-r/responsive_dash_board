import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/active_and_in_active_all_expenses_item.dart';
import 'package:responsive_dash_board/widgets/all_expenses_header_item.dart';
import '../models/all_expenses_item_model.dart';


class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel, required this.isActive});
 final AllExpensesItemModel itemModel ;
final bool isActive ;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:
      isActive ? ActiveAllExpensesItem(itemModel: itemModel,
      ): InActiveAllExpensesItem(itemModel: itemModel),
    );
  }
}
