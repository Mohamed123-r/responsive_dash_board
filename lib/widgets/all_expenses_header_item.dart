import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';


class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.itemModel,
      this.backgroundIconColor,
      this.iconColor});

  final AllExpensesItemModel itemModel;

  final Color? backgroundIconColor, iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: CircleAvatar(
                radius: 30,
                backgroundColor: backgroundIconColor ?? const Color(0xffFAFAFA),
                child: Center(
                  child: SvgPicture.asset(
                    itemModel.image,
                    colorFilter: ColorFilter.mode(
                      iconColor ?? const Color(0xFF4EB7F2),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
            Transform.rotate(
              angle: -90 * 3.14 / 90,
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: iconColor ?? const Color(0xFF064060),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
