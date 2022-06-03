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
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Text(
                  "Today’s medications",
                  style: MyTextStyle.signUpViewFullNameTextStyle,
                ),
              ),
              Column(
                children: [a(), a(), a(), a()],
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

  a() {
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
        title: Padding(
          padding: const EdgeInsets.only(bottom: 7),
          child: Row(
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
        ),
      ),
    );
  }
}
