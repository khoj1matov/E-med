import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TreatmentsView extends StatefulWidget {
  const TreatmentsView({Key? key}) : super(key: key);

  @override
  State<TreatmentsView> createState() => _TreatmentsViewState();
}

class _TreatmentsViewState extends State<TreatmentsView> {
  final List<String> _categories = [
    'Apple',
    'Tesla',
    'Top Bussines',
    'TechCrunch',
    'Wall Street Journal'
  ];

  int _selectedIndex = 0;

  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }

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
        bottom: PreferredSize(
          preferredSize: const Size(10, 10),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, __) => Padding(
              padding: const EdgeInsets.only(left: 13),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: _selectedIndex != null && _selectedIndex == __
                      ? ColorConst.kPrimaryBlack
                      : ColorConst.splashScreenColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: Text(
                  _categories[__],
                  style: TextStyle(
                    color: _selectedIndex != null && _selectedIndex == __
                        ? ColorConst.kPrimaryWhite
                        : ColorConst.kPrimaryBlack,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  _onSelected(__);
                },
              ),
            ),
            itemCount: _categories.length,
          ),
        ),
      ),
    );
  }
}
