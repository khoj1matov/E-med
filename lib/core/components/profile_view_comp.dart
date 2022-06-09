import 'package:emed/core/components/text_style_const.dart';
import 'package:emed/core/constants/color_const.dart';
import 'package:flutter/material.dart';

class ProfileWidget {
  static Container jins(
    BuildContext context,
    String name,
    double width,
  ) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.078,
      width: MediaQuery.of(context).size.width * width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: ColorConst.kPrimaryBlack,
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 20),
          CircleAvatar(
            radius: 13,
            backgroundColor: ColorConst.kPrimaryBlack,
            child: CircleAvatar(
              backgroundColor: ColorConst.kPrimaryWhite,
              radius: 12,
            ),
          ),
          const SizedBox(width: 20),
          Text(
            name,
            style: MyTextStyle.signUpViewAppBarTitleTextStyle,
          ),
        ],
      ),
    );
  }

  static Container jins2(
    BuildContext context,
    String name,
    double width,
  ) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.078,
      width: MediaQuery.of(context).size.width * width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorConst.maleColor,
        border: Border.all(
          color: ColorConst.male2Color,
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 20),
          CircleAvatar(
            radius: 13,
            backgroundColor: ColorConst.male2Color,
            child: CircleAvatar(
              backgroundColor: ColorConst.kPrimaryWhite,
              radius: 5,
            ),
          ),
          const SizedBox(width: 20),
          Text(
            name,
            style: MyTextStyle.signUpViewAppBarTitleTextStyle,
          ),
        ],
      ),
    );
  }

  static Container _container(
    BuildContext context,
    Widget chilD, {
    Color? color,
    Color? color2,
    double? heighT,
    double? width,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height * (heighT ?? 0.078),
      width: MediaQuery.of(context).size.width * (width ?? 1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
        border: Border.all(
          color: color2 ?? ColorConst.kPrimaryBlack,
        ),
      ),
      child: chilD,
    );
  }

  static Widget id(BuildContext context) {
    return _container(
      context,
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "123456",
              style: MyTextStyle.signUpViewAppBarTitleTextStyle,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.copy),
            ),
          ],
        ),
      ),
      color: ColorConst.signUpViewTextFromFielsColor,
    );
  }

  static Widget fullName(BuildContext context) {
    return _container(
      context,
      Row(
        children: [
          const SizedBox(width: 20),
          Text(
            "Bobur Mavlonov",
            style: MyTextStyle.signUpViewAppBarTitleTextStyle,
          ),
        ],
      ),
    );
  }

  static Widget dateOfBirth(BuildContext context) {
    return _container(
      context,
      Row(
        children: [
          const SizedBox(width: 20),
          const Icon(Icons.calendar_month),
          const SizedBox(width: 20),
          Text(
            "24.11.2000",
            style: MyTextStyle.signUpViewAppBarTitleTextStyle,
          ),
        ],
      ),
    );
  }

  static Widget address(BuildContext context) {
    return _container(
      context,
      Row(
        children: [
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Tashkent city, Shaykhontokhur district,",
                style: MyTextStyle.signUpViewAppBarTitleTextStyle,
              ),
              const SizedBox(height: 10),
              Text(
                "Labzak, M41, apartment number 01",
                style: MyTextStyle.signUpViewAppBarTitleTextStyle,
              ),
            ],
          ),
        ],
      ),
      heighT: 0.11,
    );
  }

  static Widget phoneNumber(BuildContext context) {
    return _container(
      context,
      Row(
        children: [
          const SizedBox(width: 20),
          Text(
            "+998 97 565 71 73",
            style: MyTextStyle.signUpViewAppBarTitleTextStyle,
          ),
        ],
      ),
    );
  }

  static Widget email(BuildContext context) {
    return _container(
      context,
      Row(
        children: [
          const SizedBox(width: 20),
          Text(
            "bobur.mavlonov@abutech.uz",
            style: MyTextStyle.signUpViewAppBarTitleTextStyle,
          ),
        ],
      ),
    );
  }

  static Widget cancelAndSaveChange(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          child: _container(
            context,
            Center(
              child: Text(
                "Cancel",
                style: MyTextStyle.signUpViewAppBarTitleTextStyle,
              ),
            ),
            heighT: 0.07,
            width: 0.3,
          ),
          onTap: () {},
        ),
        const SizedBox(width: 20),
        InkWell(
          child: _container2(
            context,
            0.07,
            0.43,
            ColorConst.splashScreenColor,
            "Save changes",
            MyTextStyle.signUpLoginViewElevated1TextStyle
          ),
          onTap: () {},
        ),
      ],
    );
  }

  static Container _container2(
    BuildContext context,
    double height,
    double width,
    Color color,
    String text,
    TextStyle textStyle,
  ) {
    return Container(
      height: MediaQuery.of(context).size.height * height,
      width: MediaQuery.of(context).size.width * width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Center(
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }

  static Widget addAnotherAccount(BuildContext context) {
    return InkWell(
      child: _container2(
        context,
        0.07,
        1,
        ColorConst.addAnotherAccountColor,
        "Add Another Account",
        MyTextStyle.signUpLoginViewElevated2TextStyle
      ),
      onTap: () {},
    );
  }

  static Widget logOut(BuildContext context) {
    return InkWell(
      child: _container2(
        context,
        0.07,
        1,
        ColorConst.logOutColor,
        "Log out",
        MyTextStyle.logOutTextStyle
      ),
      onTap: () {},
    );
  }
}
