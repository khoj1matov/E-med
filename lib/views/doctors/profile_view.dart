import 'package:emed/core/components/borders_comp.dart';
import 'package:emed/core/components/text_style_const.dart';
import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        context: context,
        title: const Text("Mavlonov Boburjon"),
        centerTitle: true,
        preferedSizeHeight: 0.07,
        iconTheme: IconThemeData(color: ColorConst.splashScreenColor),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Divider(
            height: 0.5,
            color: ColorConst.nuncOrciSedColor,
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.black,
                ),
                const SizedBox(height: 30),
                Text(
                  "Mavlonov Boburjon",
                  style: MyTextStyle.profileNameTextStyle,
                ),
                Text(
                  "Pediatric Pulmonolog",
                  style: MyTextStyle.doctorSearchTextStyle,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
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
                          borderRadius:
                              MyBorderComp.signupLoginViewElevatedButtonBorder,
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
