import 'package:emed/core/components/borders_comp.dart';
import 'package:emed/core/components/text_style_const.dart';
import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 1.25,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Today’s medications",
                  style: MyTextStyle.signUpViewFullNameTextStyle,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "No Medications",
                        style: MyTextStyle.calendarNoMedicationTextStyle,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "They will appear here only when doctor adds them to your account.",
                        style: MyTextStyle.signUpLoginViewNuncOrciSedTextStyle,
                      ),
                    ],
                  ),
                ),
                TableCalendar(
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                ),
                const SizedBox(height: 25),
                Text(
                  "Today’s appointments",
                  style: MyTextStyle.signUpViewFullNameTextStyle,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "No appointments",
                        style: MyTextStyle.calendarNoMedicationTextStyle,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "You haven’t added any appointment yet",
                        style: MyTextStyle.signUpLoginViewNuncOrciSedTextStyle,
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  child: Text(
                    "Add new appointment yet",
                    style: MyTextStyle.signUpLoginViewElevated1TextStyle,
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    fixedSize: (const Size(340, 60)),
                    primary: ColorConst.splashScreenColor,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          MyBorderComp.signupLoginViewElevatedButtonBorder,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
