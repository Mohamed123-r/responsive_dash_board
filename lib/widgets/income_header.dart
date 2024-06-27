import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/range_options.dart';

import '../utils/app_styles.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(),
        ),
        const RangeOptions(),
      ],
    );
  }
}

