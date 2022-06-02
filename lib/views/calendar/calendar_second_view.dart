import 'package:emed/core/components/medications_column.dart';
import 'package:emed/core/components/text_style_const.dart';
import 'package:emed/core/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalendarSecondView extends StatelessWidget {
  const CalendarSecondView({Key? key}) : super(key: key);

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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return ListTile(
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
                                  style:
                                      MyTextStyle.signUpViewAppBarTitleTextStyle,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  "250 mg",
                                  style:
                                      MyTextStyle.signUpViewWeWillSendTextStyle,
                                ),
                              ],
                            ),
                          ),
                          subtitle: MedicationsColumn.medications[index],
                        );
                      },
                      itemCount: 4,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
