import 'package:flutter/material.dart';
import '../models/all_expenses_item_model.dart';
import '../utils/app_images.dart';
import 'all_expenses_item.dart';

class AllExpansesListViewItem extends StatefulWidget {
  const AllExpansesListViewItem({super.key});

  @override
  State<AllExpansesListViewItem> createState() => _AllExpansesListViewItemState();
}

class _AllExpansesListViewItemState extends State<AllExpansesListViewItem> {
  int isActive = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isActive = 0;
              });
            },
            child: AllExpensesItem(
              itemModel: AllExpensesItemModel(
                title: 'Balance',
                image: Assets.imagesBalance,
                date: 'April 20, 2022',
                price: r'$500.00',
              ),
              isActive: isActive == 0 ? true : false,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isActive = 1;
              });
            },
            child: AllExpensesItem(
              itemModel: AllExpensesItemModel(
                title: 'Income',
                image: Assets.imagesIncome,
                date: 'April 20, 2022',
                price: r'$500.00',
              ),
              isActive: isActive == 1 ? true : false,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isActive = 2;
              });
            },
            child: AllExpensesItem(
              itemModel: AllExpensesItemModel(
                title: 'Expenses',
                image: Assets.imagesExpenses,
                date: 'April 20, 2022',
                price: r'$500.00',
              ),
              isActive: isActive == 2 ? true : false,
            ),
          ),
        ),
      ],
    );
  }
}
