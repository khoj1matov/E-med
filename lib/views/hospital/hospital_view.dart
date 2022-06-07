import 'package:emed/core/components/list_comp.dart';
import 'package:emed/core/components/text_style_const.dart';
import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HospitalView extends StatelessWidget {
  const HospitalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        centerTitle: true,
        context: context,
        preferedSizeHeight: 0.12,
        leading: const Image(image: AssetImage("assets/images/ellipse.png")),
        title: SvgPicture.asset("assets/icons/Group 33665.svg"),
        action: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/Group 33659.svg"),
            onPressed: () {},
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4),
          child: InkWell(
            child: Container(
              height: 36,
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConst.doctorsSearchColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search, color: ColorConst.doctorsSearchTextColor),
                  const SizedBox(width: 15),
                  Text(
                    "Search hospitals...",
                    style: MyTextStyle.doctorSearchTextStyle,
                  ),
                ],
              ),
            ),
            onTap: () {},
          ),
        ),
      ),
      body: Column(
        children: [
          Divider(
            color: ColorConst.nuncOrciSedColor,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Recommended hospitals for you",
                  style: MyTextStyle.doctorsRecomendedTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.89,
                                    height: MediaQuery.of(context).size.width *
                                        0.63,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          "assets/images/${ListComp.listPicture[index]}.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 15),
                                    child: Row(
                                      children: [
                                        _container(
                                          context,
                                          0.043,
                                          0.27,
                                          _row("calendar", "Mon - Sat"),
                                        ),
                                        const SizedBox(width: 10),
                                        _container(
                                          context,
                                          0.043,
                                          0.37,
                                          _row("clock", "09:00 - 18:00"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Text(
                                "Uzbekistan New International Clinic",
                                style:
                                    MyTextStyle.signUpViewAppBarTitleTextStyle,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "Tashkent, Shaykhontokhur, Navoi street",
                                style:
                                    MyTextStyle.signUpViewWeWillSendTextStyle,
                              ),
                              const SizedBox(height: 18),
                            ],
                          ),
                        );
                      },
                      itemCount: ListComp.listPicture.length,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row _row(String svg, String time) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset(
          "assets/icons/$svg.svg",
          height: 18,
          width: 18,
        ),
        Text(
          time,
          style: MyTextStyle.hospitalCalendarTextStyle,
        )
      ],
    );
  }

  Container _container(
    BuildContext context,
    double height,
    double width,
    Widget child,
  ) {
    return Container(
      height: MediaQuery.of(context).size.height * height,
      width: MediaQuery.of(context).size.width * width,
      decoration: BoxDecoration(
        color: ColorConst.hospitalTimeBackGroundColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: child,
    );
  }
}
