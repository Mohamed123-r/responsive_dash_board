import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_header_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white
            ,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            width: 1,
            color: Color(0xffF1F1F1),
          ),
        ),
      ),
      child: const Column(
        children: [
          AllExpensesHeaderItem(),
        ],
      ),
    );
  }
}
