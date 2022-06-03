import 'package:emed/core/components/borders_comp.dart';
import 'package:emed/core/components/text_style_const.dart';
import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        centerTitle: true,
        context: context,
        preferedSizeHeight: 0.07,
        leading: const Image(image: AssetImage("assets/images/ellipse.png")),
        title: SvgPicture.asset("assets/icons/Group 33665.svg"),
        action: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/bell.svg"),
            onPressed: () {},
          )
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                thickness: 0.5,
                color: ColorConst.doctorsSearchTextColor,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Text(
                  "Today’s medications",
                  style: MyTextStyle.signUpViewFullNameTextStyle,
                ),
              ),
              Column(
                children: [
                  _medications("1 pill", "2", "1 pill", null),
                  _medications("2 teaspoon", "3", "2 teasppoon", null),
                  _medications("1 teaspoon", "3", "4 teaspoon", null),
                  _medications("1 syringe", "1", "full",
                      ColorConst.listTilleblablaGreenColor),
                ],
              ),
              TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
              ),
              Divider(
                thickness: 0.3,
                color: ColorConst.kPrimaryBlack,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  child: Text(
                    "Add new appointment yet",
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
                  onPressed: () {},
                ),
              ),
              Divider(
                thickness: 0.8,
                color: ColorConst.kPrimaryBlack,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _medications(String text1, String text2, String text3, Color? color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: CircleAvatar(
          child: SvgPicture.asset(
            "assets/icons/Frame 33794.svg",
            height: 50,
            width: 50,
          ),
        ),
        title: Column(
          children: [
            Row(
              children: [
                Text(
                  "Patacetamol",
                  style: MyTextStyle.signUpViewAppBarTitleTextStyle,
                ),
                const SizedBox(width: 10),
                Text(
                  "250 mg",
                  style: MyTextStyle.signUpViewWeWillSendTextStyle,
                ),
              ],
            ),
            const SizedBox(height: 5),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(text1),
                    const SizedBox(width: 5),
                    CircleAvatar(
                      radius: 2,
                      backgroundColor: ColorConst.nuncOrciSedColor,
                    ),
                    const SizedBox(width: 5),
                    Text("$text2 times a day"),
                  ],
                ),
                const SizedBox(height: 5),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Text("$text3 teken"),
                  decoration: BoxDecoration(
                    color: color != ColorConst.listTilleblablaGreenColor
                        ? ColorConst.listTilleblablaColor
                        : color,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
