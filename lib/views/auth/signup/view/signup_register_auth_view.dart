import 'package:emed/core/components/borders_comp.dart';
import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/components/text_style_const.dart';
import 'package:emed/core/widgets/app_bar_widget.dart';
import 'package:emed/views/auth/signup/cubit/signup_cubit.dart';
import 'package:emed/views/auth/signup/state/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpRegisterView extends StatelessWidget {
  const SignUpRegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: Scaffold(
        appBar: MyAppBar(
          context: context,
          title: const Text("Sign Up"),
          centerTitle: true,
          preferedSizeHeight: 0.07,
          iconTheme: IconThemeData(color: ColorConst.splashScreenColor),
        ),
        body: BlocConsumer<SignUpCubit, SignUpState>(
          listener: (context, state) {},
          builder: (context, state) => SingleChildScrollView(
            child: Column(
              children: [
                Divider(
                thickness: 0.5,
                height: 1,
                color: ColorConst.doctorsSearchTextColor,
              ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.89,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                            "Sign up in order to get a full access to the system",
                            style: MyTextStyle.signUpLoginViewNuncOrciSedTextStyle,
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Full name",
                                style: MyTextStyle.signUpViewFullNameTextStyle,
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter your full name...",
                                  border: OutlineInputBorder(
                                    borderRadius: MyBorderComp.textFromFieldBorder,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 25),
                              Text(
                                "Phone number",
                                style: MyTextStyle.signUpViewFullNameTextStyle,
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter your phone number...",
                                  border: OutlineInputBorder(
                                    borderRadius: MyBorderComp.textFromFieldBorder,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Center(
                                child: Text(
                                  "We will send confirmation code to this number",
                                  style: MyTextStyle.signUpViewWeWillSendTextStyle,
                                ),
                              ),
                              const SizedBox(height: 25),
                              Text(
                                "Create password",
                                style: MyTextStyle.signUpViewFullNameTextStyle,
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                obscureText: context.watch<SignUpCubit>().isTrue,
                                decoration: InputDecoration(
                                  hintText: "Create your new password...",
                                  suffixIcon: IconButton(
                                    icon: !context.watch<SignUpCubit>().isTrue
                                        ? const Icon(Icons.remove_red_eye_outlined)
                                        : const Icon(
                                            Icons.disabled_visible_outlined),
                                    onPressed: () {
                                      context.read<SignUpCubit>().visible();
                                    },
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: MyBorderComp.textFromFieldBorder,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          child: Text(
                            "Continue",
                            style: MyTextStyle.signUpLoginViewElevated1TextStyle,
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            fixedSize: (const Size(340, 54)),
                            primary: ColorConst.splashScreenColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: MyBorderComp
                                  .signupLoginViewElevatedButtonBorder,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/signup_id');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
