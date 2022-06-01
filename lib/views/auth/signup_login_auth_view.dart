import 'package:emed/core/components/borders_comp.dart';
import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/components/text_style_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpLoginAuthView extends StatelessWidget {
  const SignUpLoginAuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: SvgPicture.asset(
                "assets/icons/Group 33665.svg",
                height: 63,
                width: 200,
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Text(
                    "Your medical data is always with you",
                    style: MyTextStyle.signUpLoginViewYourMedicalTextStyle,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Nunc orci sed sed posuere volutpat varius egestas sit. Amet, suscipit eget dis fusce quam in aliquet pulvinar.",
                    style: MyTextStyle.signUpLoginViewNuncOrciSedTextStyle,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  ElevatedButton(
                    child: Text(
                      "Get Started",
                      style: MyTextStyle.signUpLoginViewElevated1TextStyle,
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      fixedSize: (const Size(340, 54)),
                      primary: ColorConst.splashScreenColor,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            MyBorderComp.signupLoginViewElevatedButtonBorder,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(height: 18),
                  ElevatedButton(
                    child: Text(
                      "Log In",
                      style: MyTextStyle.signUpLoginViewElevated2TextStyle,
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      fixedSize: (const Size(340, 54)),
                      primary: ColorConst.kPrimaryWhite,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            MyBorderComp.signupLoginViewElevatedButtonBorder,
                      ),
                      side: BorderSide(
                        color: ColorConst.splashScreenColor,
                        width: 2,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
