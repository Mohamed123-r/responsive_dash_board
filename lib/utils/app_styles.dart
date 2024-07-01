import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular12(context) {
    return  TextStyle(
      color:const Color(0xFFAAAAAA),
      fontSize: getResponsiveScaleFactor(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular14(context) {
    return  TextStyle(
      color:const Color(0xFFAAAAAA),
      fontSize: getResponsiveScaleFactor(context, fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular16(context) {
    return  TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsiveScaleFactor(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleBold16(context) {
    return  TextStyle(
      color:const Color(0xFF4EB7F2),
      fontSize: getResponsiveScaleFactor(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium16(context) {
    return  TextStyle(
      color:const Color(0xFF064061),
      fontSize: getResponsiveScaleFactor(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(context) {
    return  TextStyle(
      color:const Color(0xFF064061),
      fontSize: getResponsiveScaleFactor(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(context) {
    return  TextStyle(
      color:const Color(0xFF064061),
      fontSize: getResponsiveScaleFactor(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleMedium20(
    context,
  ) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveScaleFactor(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold24(context) {
    return  TextStyle(
      color:const Color(0xFF4EB7F2),
      fontSize: getResponsiveScaleFactor(context, fontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold18(context) {
    return  TextStyle(
      color:const Color(0xFFFFFFFF),
      fontSize: getResponsiveScaleFactor(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
}

double getResponsiveScaleFactor(BuildContext context,
    {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = responsiveFontSize * 0.8;
  double upperLimit = responsiveFontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  if (width <= SizeConfig.tablet) {
    return width / 450;
  } else if (width <= SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1550;
  }
}
