import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyle {
  static TextStyle styleSemiBold30(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold18(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold14(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular17(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 17),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular16(context) {
    return GoogleFonts.merriweather(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular12(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.3;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width <= 400) {
    return 0.85;
  } else if (width <= 800) {
    return 0.95;
  } else if (width <= 1200) {
    return 1.15;
  } else {
    return 1.25;
  }
}
