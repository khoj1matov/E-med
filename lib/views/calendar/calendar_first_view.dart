import 'package:emed/core/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalendarFirstView extends StatelessWidget {
  const CalendarFirstView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(

        centerTitle: true,
        context: context,
        leading: SvgPicture.asset("assets/icons/Ellipse 1.svg"),
        title: SvgPicture.asset("assets/icons/Group 33665.svg"),
        action: [

        ],
      ),
    );
  }
}
