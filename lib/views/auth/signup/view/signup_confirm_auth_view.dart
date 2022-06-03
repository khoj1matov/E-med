import 'package:emed/core/components/text_style_const.dart';
import 'package:emed/core/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class SignUpConfirmView extends StatelessWidget {
  const SignUpConfirmView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        context: context,
        title: const Text("Sign Up"),
        centerTitle: true,
        preferedSizeHeight: 0.08,
      ),
      body: Column(
        children: [
          Text(
            "We sent a confirmation code to your number. Please, enter the code",
            style: MyTextStyle.signUpLoginViewNuncOrciSedTextStyle,
          )
        ],
      ),
    );
  }
}
