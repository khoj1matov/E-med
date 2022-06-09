import 'package:emed/core/components/borders_comp.dart';
import 'package:emed/core/components/text_style_const.dart';
import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/widgets/app_bar_widget.dart';
import 'package:emed/views/auth/signup/cubit/signup_cubit.dart';
import 'package:emed/views/auth/signup/state/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class BookAnAppoinmentView extends StatelessWidget {
  const BookAnAppoinmentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: Scaffold(
        appBar: MyAppBar(
          context: context,
          title: Row(
            children: [
              TextButton(
                child: Text("Cancel", style: MyTextStyle.cancelTextStyle),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
              ),
              const SizedBox(width: 30),
              const Text("Book an appointment"),
            ],
          ),
          centerTitle: true,
          preferedSizeHeight: 0.07,
        ),
        body: BlocConsumer<SignUpCubit, SignUpState>(
          listener: (context, state) {},
          builder: (context, state) => SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 1.12,
              width: MediaQuery.of(context).size.width * 1,
              child: Column(
                children: [
                  Divider(
                    thickness: 0.5,
                    color: ColorConst.doctorsSearchTextColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Region",
                              style: MyTextStyle.signUpViewFullNameTextStyle,
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Choose hospital region...",
                                suffixIcon: IconButton(
                                  icon: const Icon(Icons.arrow_drop_down),
                                  onPressed: () {},
                                ),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      MyBorderComp.textFromFieldBorder,
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            Text(
                              "District",
                              style: MyTextStyle.signUpViewFullNameTextStyle,
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Choose hospital district...",
                                suffixIcon: IconButton(
                                  icon: const Icon(Icons.arrow_drop_down),
                                  onPressed: () {},
                                ),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      MyBorderComp.textFromFieldBorder,
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            Text(
                              "Hospital",
                              style: MyTextStyle.signUpViewFullNameTextStyle,
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Choose doctor's workplace...",
                                suffixIcon: IconButton(
                                  icon: const Icon(Icons.arrow_drop_down),
                                  onPressed: () {},
                                ),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      MyBorderComp.textFromFieldBorder,
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            Text(
                              "Doctor's position",
                              style: MyTextStyle.signUpViewFullNameTextStyle,
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Choose doctor's position...",
                                suffixIcon: IconButton(
                                  icon: const Icon(Icons.arrow_drop_down),
                                  onPressed: () {},
                                ),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      MyBorderComp.textFromFieldBorder,
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            Text(
                              "The doctor",
                              style: MyTextStyle.signUpViewFullNameTextStyle,
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Choose the doctor you want...",
                                suffixIcon: IconButton(
                                  icon: const Icon(Icons.arrow_drop_down),
                                  onPressed: () {},
                                ),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      MyBorderComp.textFromFieldBorder,
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
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
                                  borderRadius:
                                      MyBorderComp.textFromFieldBorder,
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
                                  const SizedBox(width: 10),
                                  Text(
                                    "DD.MM.YYYY / HH:MM - HH:MM",
                                    style: MyTextStyle
                                        .signUpLoginViewNuncOrciSedTextStyle,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 25),
                          ],
                        ),
                        ElevatedButton(
                          child: Text(
                            "Confirm",
                            style:
                                MyTextStyle.signUpLoginViewElevated1TextStyle,
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            fixedSize: (const Size(350, 54)),
                            primary: ColorConst.splashScreenColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: MyBorderComp
                                  .signupLoginViewElevatedButtonBorder,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/doctors');
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  
}
