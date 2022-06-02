import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/components/text_style_const.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  Widget title;
  Widget? leading;
  bool? centerTitle;
  BuildContext context;
  List<Widget>? action;

  MyAppBar({
    Key? key,
    required this.title,
    this.centerTitle,
    this.leading,
    required this.context,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      title: title,
      centerTitle: centerTitle,
      actions: action,
      backgroundColor: ColorConst.appBarBackgroundColor,
      elevation: 0,
      titleTextStyle: MyTextStyle.signUpViewAppBarTitleTextStyle,
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(MediaQuery.of(context).size.height * 0.08);
}
