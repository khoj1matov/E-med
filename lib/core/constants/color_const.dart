import 'package:flutter/material.dart';

class ColorConst {
  static Color kPrimaryWhite = const Color(0XFFFFFFFF);
  static Color kPrimaryBlack = Colors.black;
  static Color kPrimaryTransparent = Colors.transparent;
  static Color splashScreenColor = const Color(0XFF4F8FC0);
  static Color yourMedicalDataColor = const Color(0XFF000000);
  static Color nuncOrciSedColor = const Color(0xFF000000).withOpacity(0.6);
  static Color appBarBackgroundColor = const Color(0xFFF9F9F9).withOpacity(0.9);
  static Color signUpViewTextFromFielsColor = const Color(0xFFE6E6E8);
  static Color listTilleblablaColor = const Color(0XFFE6E6E8);
  static Color listTilleblablaGreenColor = const Color(0XFFECF8F0);
  static Color doctorsSearchColor = const Color(0XFF767680).withOpacity(0.12);
  static Color starColor = Colors.orange;
  static Color hospitalCalendarColor = const Color(0xFF393647).withOpacity(0.8);
  static Color hospitalAndMapColor = const Color(0xFF92949D).withOpacity(0.21);
  static Color hospitalAndMap2Color = const Color(0xFFB0B4C9).withOpacity(0.21);
  static Color profileDeletePhotoColor = Colors.red;
  static Color maleColor = const Color(0XFF4F8FC0).withOpacity(0.1);
  static Color male2Color = Colors.blue;
  static Color addAnotherAccountColor = const Color(0XFFEAF2FC);
  static Color logOutColor = const Color(0XFFFBF6F6);

  static Color hospitalTimeBackGroundColor =
      const Color(0XFFFFFFFF).withOpacity(0.8);
  static Color doctorsSearchTextColor =
      const Color(0XFF3C3C43).withOpacity(0.6);

  static get gradient => const LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Color(0xFF92949D),
          Color(0xFFB0B4C9),
        ],
      );
}
