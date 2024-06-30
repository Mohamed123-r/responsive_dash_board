import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_background_container.dart';
import 'income_details.dart';
import 'income_chart.dart';
import 'income_header.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.of(context).size.width.toString());
    return CustomBackGroundContainer(
      child: Column(
        children: [
          const IncomeHeader(),
          MediaQuery.of(context).size.width < 1485 &&
                  MediaQuery.of(context).size.width > 1200
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
