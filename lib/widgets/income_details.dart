import 'package:flutter/material.dart';
import '../models/income_details_model.dart';
import 'income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    IncomeDetailsModel(
      title: 'Design service',
      value: '40%',
      color: Color(0xff208CC8),
    ),
    IncomeDetailsModel(
      title: 'Design product',
      value: '25%',
      color: Color(0xff4EB7F2),
    ),
    IncomeDetailsModel(
      title: 'Design service',
      value: '20%',
      color: Color(0xff064061),
    ),
    IncomeDetailsModel(
      title: 'Design product',
      value: '22%',
      color: Color(0xffE2DECD),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return IncomeDetailsItem(
            incomeDetailsModel: items[index],
          );
        });
  }
}
