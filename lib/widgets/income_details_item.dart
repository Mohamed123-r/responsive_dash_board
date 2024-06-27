import 'package:flutter/material.dart';
import '../models/income_details_model.dart';
import '../utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeDetailsModel});

  final IncomeDetailsModel incomeDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(

      leading: Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: incomeDetailsModel.color,
        ),
      ),
      title: Text(
        incomeDetailsModel.title,
        style: AppStyles.styleRegular16(),
      ),
      trailing: Text(
        incomeDetailsModel.value,
        style: AppStyles.styleMedium16().copyWith(
          color: const Color(0xff208CC8),
        ),
      ),
    );
  }
}
