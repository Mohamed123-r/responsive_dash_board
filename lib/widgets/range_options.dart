import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xffF1F1F1),
          width: 1.0,
        ),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleRegular16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
            angle: -90 * 3.14 / 180,
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xFF064060),
            ),

          ),
        ],
      ),
    );
  }
}
