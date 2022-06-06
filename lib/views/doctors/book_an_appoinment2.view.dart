import 'package:emed/core/components/borders_comp.dart';
import 'package:emed/core/components/text_style_const.dart';
import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookAnAppoinment2View extends StatelessWidget {
  const BookAnAppoinment2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        context: context,
        title: const Text("Book an appoinment"),
        centerTitle: true,
        preferedSizeHeight: 0.07,
        iconTheme: IconThemeData(color: ColorConst.splashScreenColor),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            color: ColorConst.nuncOrciSedColor,
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Appoinment to:",
              style: MyTextStyle.doctorsRecomendedTextStyle,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: ColorConst.splashScreenColor,
            ),
            title: Text(
              "Mavlonov Boburjon",
              style: MyTextStyle.profileNameTextStyle,
            ),
            subtitle: Text(
              "Pediatric pulmonolog at Pediatric hospital №14",
              style: MyTextStyle.signUpLoginViewNuncOrciSedTextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  color: ColorConst.nuncOrciSedColor,
                  height: 1,
                ),
                const SizedBox(height: 30),
                Text(
                  "Service type",
                  style: MyTextStyle.signUpViewFullNameTextStyle,
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Choose doctor's service type...",
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.arrow_drop_down),
                      onPressed: () {},
                    ),
                    border: OutlineInputBorder(
                      borderRadius: MyBorderComp.textFromFieldBorder,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Text(
                  "Enter the time",
                  style: MyTextStyle.signUpViewFullNameTextStyle,
                ),
                const SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 0.8,
                      color: ColorConst.nuncOrciSedColor,
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      SvgPicture.asset(
                        "assets/icons/Frame 33705.svg",
                        height: 25,
                        width: 25,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "DD.MM.YYYY / HH:MM - HH:MM",
                        style:
                            MyTextStyle.signUpLoginViewNuncOrciSedTextStyle,
                      ),
                      IconButton(
                        icon: const Icon(Icons.arrow_drop_down),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: ElevatedButton(
          child: Text(
            "Confirm",
            style: MyTextStyle.signUpLoginViewElevated1TextStyle,
          ),
          style: ElevatedButton.styleFrom(
            elevation: 0,
            fixedSize: (const Size(350, 54)),
            primary: ColorConst.splashScreenColor,
            shape: RoundedRectangleBorder(
              borderRadius: MyBorderComp.signupLoginViewElevatedButtonBorder,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/doctors');
          },
        ),
      ),
    );
  }
}
