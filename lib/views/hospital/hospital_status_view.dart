import 'package:emed/core/components/list_comp.dart';
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
          height: MediaQuery.of(context).size.height * 1.5,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 60,
                        backgroundImage:
                            AssetImage("assets/images/Ellipse 6.png"),
                      ),
                      const SizedBox(height: 25),
                      Text(
                        "Tashkent International Clinic",
                        style: MyTextStyle.profileNameTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _text1("Phone number"),
                        const SizedBox(height: 12),
                        _text2("+998 97 210 11 12"),
                        const SizedBox(height: 25),
                        _text1("Working time"),
                        const SizedBox(height: 12),
                        _text2("Monday - Saturday\n10:00 - 16:00"),
                        const SizedBox(height: 25),
                        _text1("Location"),
                        const SizedBox(height: 12),
                        _text2("Tashkent, Farabi street, 59"),
                        const SizedBox(height: 25),
                        _text1("Location link"),
                        const SizedBox(height: 12),
                        InkWell(
                          child: Text(
                            "See on Google Map",
                            style:
                                MyTextStyle.signUpLoginViewElevated2TextStyle,
                          ),
                          onTap: () {},
                        ),
                        const SizedBox(height: 25),
                        _text1("Website"),
                        const SizedBox(height: 12),
                        InkWell(
                          child: Text(
                            "tashclinic.org",
                            style:
                                MyTextStyle.signUpLoginViewElevated2TextStyle,
                          ),
                          onTap: () {},
                        ),
                        const SizedBox(height: 35),
                        Text(
                          "Doctors at this hospital",
                          style: MyTextStyle.doctorsRecomendedTextStyle,
                        ),
                        const SizedBox(height: 25),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.63,
                child: ListView.builder(
                  itemBuilder: (context, __) => InkWell(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: ColorConst.splashScreenColor,
                      ),
                      title: Text(
                        ListComp.listHospitalDoctors[__]["title"].toString(),
                        style: MyTextStyle.signUpViewAppBarTitleTextStyle,
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ListComp.listHospitalDoctors[__]["category"]
                                  .toString(),
                              style: MyTextStyle.doctorsRecomendedTextStyle,
                            ),
                            Divider(
                              thickness: 0.3,
                              color: ColorConst.kPrimaryBlack,
                            ),
                          ],
                        ),
                      ),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                  ),
                  itemCount: ListComp.listHospitalDoctors.length,
                ),
              ),
            ],
          ),
        ),
      ),
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