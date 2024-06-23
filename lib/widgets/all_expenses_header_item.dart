import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import '../utils/app_styles.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.itemModel});

  final AllExpensesItemModel itemModel ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: const Color(0xffFAFAFA),
              child: Center(
                child: SvgPicture.asset(
                  itemModel.image,
                ),
              ),
            ),
            const Spacer(),
            Transform.rotate(
              angle: -90 * 3.14 / 90,
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Color(0xFF064060),
              ),

            ),
          ],
        ),
        const SizedBox(
          height: 34,
        ),
        Text(
          itemModel.title,
          style: AppStyles.styleSemiBold16(),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          itemModel.date,
          style: AppStyles.styleRegular14(),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          itemModel.price,
          style: AppStyles.styleSemiBold24(),
        ),
      ],
    );
  }
}
