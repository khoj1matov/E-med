import 'package:emed/core/components/borders_comp.dart';
import 'package:emed/core/components/text_style_const.dart';
import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorsView extends StatelessWidget {
  const DoctorsView({Key? key}) : super(key: key);

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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.search, color: ColorConst.doctorsSearchTextColor),
                  Text(
                    "Search doctors by name or position",
                    style: MyTextStyle.doctorSearchTextStyle,
                  ),
                  const SizedBox(width: 5),
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
            thickness: 0.5,
            color: ColorConst.doctorsSearchTextColor,
          ),
        ],
      ),
    );
  }
}
