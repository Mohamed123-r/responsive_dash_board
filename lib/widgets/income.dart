
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'custom_background_container.dart';
import 'income_details.dart';
import 'income_chart.dart';
import 'income_header.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return CustomBackGroundContainer(
      child: Column(
        children: [
          const IncomeHeader(),
          width < 1485 && width > SizeConfig.desktop
              ? const Column(
                  children: [
                    IncomeDetails(),
                    SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      height: 130,
                      child: IncomeChart(),
                    ),
                  ],
                )
              : const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: IncomeChart(),
                    ),
                    Expanded(
                      flex: 2,
                      child: IncomeDetails(),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
