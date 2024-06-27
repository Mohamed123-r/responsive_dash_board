import 'package:flutter/material.dart';
import 'custom_background_container.dart';
import 'income_details.dart';
import 'income_chart.dart';
import 'income_header.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomBackGroundContainer(
      child: Column(
        children: [
          IncomeHeader(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(
                child: IncomeDetails(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
