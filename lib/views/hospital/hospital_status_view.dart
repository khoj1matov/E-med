import 'package:emed/core/components/borders_comp.dart';
import 'package:emed/core/components/text_style_const.dart';
import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HospitalStatusView extends StatelessWidget {
  const HospitalStatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/images/Ellipse 6.png"),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        "Tashkent International Clinic",
                        style: MyTextStyle.profileNameTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _text1("Place of work"),
                        const SizedBox(height: 12),
                        _text2("Pediatric hospital №14"),
                        const SizedBox(height: 25),
                        _text1("Work location"),
                        const SizedBox(height: 12),
                        _text2(
                          "Shaykhantakhur district, st. Zulfiyahonim, 18 Tashkent, 100128",
                        ),
                        const SizedBox(height: 25),
                        _text1("Available time"),
                        const SizedBox(height: 12),
                        _text2("Monday - Saturday      10:00 - 16:00"),
                        const SizedBox(height: 25),
                        _text1("Raiting"),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            _icon(),
                            _icon(),
                            _icon(),
                            _icon(),
                            Icon(
                              Icons.star,
                              color: ColorConst.nuncOrciSedColor,
                            ),
                          ],
                        ),
                        const SizedBox(height: 25),
                        ElevatedButton(
                          child: Text(
                            "Book an appoinment",
                            style: MyTextStyle.signUpLoginViewElevated1TextStyle,
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            fixedSize: (const Size(350, 54)),
                            primary: ColorConst.splashScreenColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: MyBorderComp
                                  .signupLoginViewElevatedButtonBorder,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/book_an_appoinment2');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Icon _icon() {
    return Icon(
      Icons.star,
      color: ColorConst.starColor,
    );
  }

  Text _text1(String text) {
    return Text(
      text,
      style: MyTextStyle.doctorSearchTextStyle,
    );
  }

  Text _text2(String text) {
    return Text(
      text,
      style: MyTextStyle.signUpViewAppBarTitleTextStyle,
    );
  }
}

MyAppBar _appBar(BuildContext context) {
  return MyAppBar(
    context: context,
    title: const Text("Hospital"),
    centerTitle: true,
    preferedSizeHeight: 0.07,
    iconTheme: IconThemeData(color: ColorConst.splashScreenColor),
    action: [
      IconButton(
        icon: SvgPicture.asset("assets/icons/Group 33659.svg"),
        onPressed: () {},
      )
    ],
    bottom: const PreferredSize(
      preferredSize: Size(2, 2),
      child: Divider(
        height: 1,
        thickness: 2,
      ),
    ),
  );
}
