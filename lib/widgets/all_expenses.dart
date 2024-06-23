import 'package:flutter/material.dart';
import '../models/all_expenses_item_model.dart';
import '../utils/app_images.dart';
import 'all_expenses_header.dart';
import 'all_expenses_item.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const AllExpensesHeader(),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              AllExpensesItem(
                itemModel: AllExpensesItemModel(
                  title: 'Balance',
                  image: Assets.imagesBalance,
                  date: 'April 20, 2022',
                  price: r'$500.00',
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              AllExpensesItem(
                itemModel: AllExpensesItemModel(
                  title: 'Income',
                  image: Assets.imagesIncome,
                  date: 'April 20, 2022',
                  price: r'$500.00',
                ),
              ),
              const SizedBox(
                width: 12,
              ),   AllExpensesItem(
                itemModel: AllExpensesItemModel(
                  title: 'Expenses',
                  image: Assets.imagesExpenses,
                  date: 'April 20, 2022',
                  price: r'$500.00',
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
