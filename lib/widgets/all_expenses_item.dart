import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_header_item.dart';
import '../models/all_expenses_item_model.dart';


class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel});
 final AllExpensesItemModel itemModel ;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(
              width: 1,
              color: Color(0xffF1F1F1),
            ),
          ),
        ),
        child:  AllExpensesItemHeader(
          itemModel: itemModel,
        ),
      ),
    );
  }
}
