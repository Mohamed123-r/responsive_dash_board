import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'custom_text-field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hintText});
final String title ,hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
         CustomTextField(hintText: hintText,),
      ],
    );
  }
}