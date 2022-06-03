import 'package:emed/core/components/borders_comp.dart';
import 'package:emed/core/components/text_style_const.dart';
import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpIdView extends StatelessWidget {
  const SignUpIdView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        context: context,
        title: const Text("Your personal ID"),
        centerTitle: true,
        preferedSizeHeight: 0.07,
        iconTheme: IconThemeData(color: ColorConst.splashScreenColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  const SizedBox(height: 52),
                  SvgPicture.asset("assets/icons/yourPersonalID.svg"),
                  const SizedBox(height: 32),
                  Text(
                    "Doctors use your ID to have an access to your medical informations. We have sent this ID and your password to your number so you don’t forget them",
                    style: MyTextStyle.signUpLoginViewNuncOrciSedTextStyle,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your ID",
                        style: MyTextStyle.signUpViewFullNameTextStyle,
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 0.08,
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.6,
                              decoration: BoxDecoration(
                                color: ColorConst.signUpViewTextFromFielsColor,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                                border: Border.all(width: 1),
                              ),
                              child: Center(
                                child: Text(
                                  "123456",
                                  style: MyTextStyle.signUpIdViewTextStyle,
                                ),
                              ),
                            ),
                            InkWell(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.29,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  border: Border.all(width: 1),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const SizedBox(height: double.infinity),
                                    Text(
                                      "copy",
                                      style: MyTextStyle
                                          .signUpViewAppBarTitleTextStyle,
                                    ),
                                    SvgPicture.asset("assets/icons/copy.svg"),
                                  ],
                                ),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    child: Text(
                      "Go to your account",
                      style: MyTextStyle.signUpLoginViewElevated1TextStyle,
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      fixedSize: (const Size(350, 54)),
                      primary: ColorConst.splashScreenColor,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            MyBorderComp.signupLoginViewElevatedButtonBorder,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/cart");
                    },
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
