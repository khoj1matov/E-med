import 'package:emed/core/constants/color_const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextStyle {
  static get signUpLoginViewYourMedicalTextStyle => TextStyle(
        color: ColorConst.yourMedicalDataColor,
        fontSize: 40,
      );

  static get signUpLoginViewNuncOrciSedTextStyle => TextStyle(
        color: ColorConst.nuncOrciSedColor,
        fontSize: 18,
      );

  static get signUpLoginViewElevated1TextStyle => TextStyle(
        color: ColorConst.kPrimaryWhite,
        fontSize: 18,
      );

  static get signUpLoginViewElevated2TextStyle => TextStyle(
        color: ColorConst.splashScreenColor,
        fontSize: 18,
      );

  static get signUpViewAppBarTitleTextStyle => TextStyle(
        color: ColorConst.kPrimaryBlack,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      );

  static get signUpViewFullNameTextStyle => TextStyle(
        color: ColorConst.kPrimaryBlack,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  static get signUpViewWeWillSendTextStyle => TextStyle(
        color: ColorConst.nuncOrciSedColor,
        fontSize: 14,
      );

  static get signUpIdViewTextStyle => TextStyle(
        color: ColorConst.kPrimaryBlack,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      );

  static get calendarNoMedicationTextStyle => TextStyle(
        color: ColorConst.kPrimaryBlack,
        fontSize: 26,
        fontWeight: FontWeight.w600,
      );

  static get doctorSearchTextStyle => TextStyle(
        color: ColorConst.doctorsSearchTextColor,
        fontSize: 17,
        fontWeight: FontWeight.w500,
      );

  static get cancelTextStyle => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      );

  static get doctorsRecomendedTextStyle => TextStyle(
        color: ColorConst.nuncOrciSedColor,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      );

  static get profileNameTextStyle => TextStyle(
        color: ColorConst.kPrimaryBlack,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      );

  static get hospitalCalendarTextStyle => TextStyle(
        color: ColorConst.hospitalCalendarColor,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      );

  static get profileDeletePhotoTextStyle => TextStyle(
        color: ColorConst.profileDeletePhotoColor,
      );

  static get logOutTextStyle => TextStyle(
        color: ColorConst.profileDeletePhotoColor,
        fontSize: 18,
      );
}
