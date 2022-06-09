import 'package:emed/core/components/list_comp.dart';
import 'package:emed/core/components/text_style_const.dart';
import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/widgets/app_bar_widget.dart';
import 'package:emed/views/hospital/hospital_cubit.dart';
import 'package:emed/views/hospital/hospital_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HospitalView extends StatelessWidget {
  const HospitalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HospitalCubit(),
      child: _scaffold(context),
    );
  }

  Scaffold _scaffold(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: BlocConsumer<HospitalCubit, HospitalState>(
        listener: (context, state) {},
        builder: (context, state) => !context.watch<HospitalCubit>().isTrue
            ? Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: MediaQuery.of(context).size.height * 0.75,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/Frame 33991.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    child: context.watch<HospitalCubit>().isTrue
                        ? Container(
                            alignment: Alignment.centerLeft,
                            height: MediaQuery.of(context).size.height * 0.07,
                            width: MediaQuery.of(context).size.width * 0.62,
                            decoration: BoxDecoration(
                              gradient: ColorConst.gradient,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 4),
                                  height: MediaQuery.of(context).size.height *
                                      0.062,
                                  width:
                                      MediaQuery.of(context).size.width * 0.32,
                                  decoration: BoxDecoration(
                                    color: ColorConst.splashScreenColor,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Card view",
                                      style: MyTextStyle
                                          .signUpLoginViewElevated1TextStyle,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 14),
                                Text(
                                  "Map view",
                                  style: MyTextStyle
                                      .signUpViewAppBarTitleTextStyle,
                                ),
                              ],
                            ),
                          )
                        : Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            width: MediaQuery.of(context).size.width * 0.62,
                            decoration: BoxDecoration(
                              gradient: ColorConst.gradient,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(width: 10),
                                Text(
                                  "Card view",
                                  style: MyTextStyle
                                      .signUpViewAppBarTitleTextStyle,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 4),
                                  height: MediaQuery.of(context).size.height *
                                      0.062,
                                  width:
                                      MediaQuery.of(context).size.width * 0.32,
                                  decoration: BoxDecoration(
                                    color: ColorConst.splashScreenColor,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Map view",
                                      style: MyTextStyle
                                          .signUpLoginViewElevated1TextStyle,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                    onTap: () {
                      context.read<HospitalCubit>().visible();
                    },
                  ),
                ],
              )
            : Column(
                children: [
                  Divider(
                    color: ColorConst.nuncOrciSedColor,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Recommended hospitals for you",
                              style: MyTextStyle.doctorsRecomendedTextStyle,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.699,
                                width: MediaQuery.of(context).size.width,
                                child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemBuilder: (context, index) {
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.89,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.63,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
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
                                                top: 15,
                                                left: 15,
                                              ),
                                              child: Row(
                                                children: [
                                                  _container(
                                                    context,
                                                    0.043,
                                                    0.27,
                                                    _row("calendar",
                                                        "Mon - Sat"),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  _container(
                                                    context,
                                                    0.043,
                                                    0.37,
                                                    _row("clock",
                                                        "09:00 - 18:00"),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 15),
                                        Text(
                                          "Uzbekistan New International Clinic",
                                          style: MyTextStyle
                                              .signUpViewAppBarTitleTextStyle,
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          "Tashkent, Shaykhontokhur, Navoi street",
                                          style: MyTextStyle
                                              .signUpViewWeWillSendTextStyle,
                                        ),
                                        const SizedBox(height: 18),
                                      ],
                                    );
                                  },
                                  itemCount: ListComp.listPicture.length,
                                ),
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(50),
                          child: context.watch<HospitalCubit>().isTrue
                              ? Container(
                                  alignment: Alignment.centerLeft,
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width:
                                      MediaQuery.of(context).size.width * 0.62,
                                  decoration: BoxDecoration(
                                    gradient: ColorConst.gradient,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(left: 4),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.062,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.32,
                                        decoration: BoxDecoration(
                                          color: ColorConst.splashScreenColor,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Card view",
                                            style: MyTextStyle
                                                .signUpLoginViewElevated1TextStyle,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 14),
                                      Text(
                                        "Map view",
                                        style: MyTextStyle
                                            .signUpViewAppBarTitleTextStyle,
                                      ),
                                    ],
                                  ),
                                )
                              : Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width:
                                      MediaQuery.of(context).size.width * 0.62,
                                  decoration: BoxDecoration(
                                    gradient: ColorConst.gradient,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const SizedBox(width: 10),
                                      Text(
                                        "Card view",
                                        style: MyTextStyle
                                            .signUpViewAppBarTitleTextStyle,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(right: 4),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.062,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.32,
                                        decoration: BoxDecoration(
                                          color: ColorConst.splashScreenColor,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Map view",
                                            style: MyTextStyle
                                                .signUpLoginViewElevated1TextStyle,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                          onTap: () {
                            context.read<HospitalCubit>().visible();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  MyAppBar _appBar(BuildContext context) {
    return MyAppBar(
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
