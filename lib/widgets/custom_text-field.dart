
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
 final String hintText ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color(0xff4EB7F2),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppStyles.styleRegular16().copyWith(
          color: const Color(
            0xffAAAAAA,
          ),
        ),
        filled: true,
        fillColor: const Color(0xffFAFAFA),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xffFAFAFA),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xffFAFAFA),
          ),
        ),
      ),
    );
  }
}
