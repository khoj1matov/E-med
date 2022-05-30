import 'package:emed/core/constants/color_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConst.splashScreenColor,
      child: Center(
        child: SvgPicture.asset("assets/icons/group33665.svg"),
      ),
    );
  }
}
