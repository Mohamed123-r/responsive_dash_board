import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(),
        ),
        const CircleAvatar(
          radius: 30,
          backgroundColor: Color(0xffFAFAFA),
          child: Center(
            child: Icon(
              Icons.add,
              color: Color(0xFF4EB7F2),
            ),
          ),
        ),
      ],
    );
  }
}
