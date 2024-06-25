import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.color});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      height: 62,
      color: color ?? Colors.white,
      onPressed: () {},
      child: Text(
        text,
        style: AppStyles.styleSemiBold18().copyWith(
          color: color == null ? const Color(0xff4EB7F2) : Colors.white,
        ),
      ),
    );
  }
}
