import 'package:emed/core/components/profile_view_comp.dart';
import 'package:emed/core/components/text_style_const.dart';
import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/widgets/app_bar_widget.dart';
import 'package:emed/views/profile/profile_cubit.dart';
import 'package:emed/views/profile/profile_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit(),
      child: _scaffold(context),
    );
  }

  Scaffold _scaffold(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: BlocConsumer<ProfileCubit, ProfileState>(
        listener: (context, state) {},
        builder: (context, state) => SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: ColorConst.splashScreenColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    child: const Text("Upload new picture"),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: ColorConst.splashScreenColor,
                    ),
                  ),
                  TextButton(
                    child: Text(
                      "Delete photo",
                      style: MyTextStyle.profileDeletePhotoTextStyle,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ID",
                      style: MyTextStyle.signUpLoginViewNuncOrciSedTextStyle,
                    ),
                    const SizedBox(height: 12),
                    ProfileWidget.id(context),
                    const SizedBox(height: 25),
                    Text(
                      "Full name",
                      style: MyTextStyle.signUpLoginViewNuncOrciSedTextStyle,
                    ),
                    const SizedBox(height: 12),
                    ProfileWidget.fullName(context),
                    const SizedBox(height: 25),
                    Text(
                      "Date of birth",
                      style: MyTextStyle.signUpLoginViewNuncOrciSedTextStyle,
                    ),
                    const SizedBox(height: 12),
                    ProfileWidget.dateOfBirth(context),
                    const SizedBox(height: 25),
                    Text(
                      "Gender",
                      style: MyTextStyle.signUpLoginViewNuncOrciSedTextStyle,
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: context.watch<ProfileCubit>().malee
                              ? ProfileWidget.jins2(context, "Male", 0.41)
                              : ProfileWidget.jins(context, "Male", 0.41),
                          onTap: () {
                            context.read<ProfileCubit>().visible(
                                  true,
                                  false,
                                  false,
                                );
                          },
                        ),
                        InkWell(
                          child: context.watch<ProfileCubit>().famalee
                              ? ProfileWidget.jins2(context, "Famale", 0.41)
                              : ProfileWidget.jins(context, "Famale", 0.41),
                          onTap: () {
                            context.read<ProfileCubit>().visible(
                                  false,
                                  true,
                                  false,
                                );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    InkWell(
                      child: context.watch<ProfileCubit>().transs
                          ? ProfileWidget.jins2(context, "Prefer not to say", 1)
                          : ProfileWidget.jins(context, "Prefer not to say", 1),
                      onTap: () {
                        context.read<ProfileCubit>().visible(
                              false,
                              false,
                              true,
                            );
                      },
                    ),
                    const SizedBox(height: 25),
                    Text(
                      "Address",
                      style: MyTextStyle.signUpLoginViewNuncOrciSedTextStyle,
                    ),
                    const SizedBox(height: 12),
                    ProfileWidget.address(context),
                    const SizedBox(height: 25),
                    Text(
                      "Phone number",
                      style: MyTextStyle.signUpLoginViewNuncOrciSedTextStyle,
                    ),
                    const SizedBox(height: 12),
                    ProfileWidget.phoneNumber(context),
                    const SizedBox(height: 25),
                    Text(
                      "Email",
                      style: MyTextStyle.signUpLoginViewNuncOrciSedTextStyle,
                    ),
                    const SizedBox(height: 12),
                    ProfileWidget.email(context),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Profile visibility",
                          style: MyTextStyle.signUpViewAppBarTitleTextStyle,
                        ),
                        CupertinoSwitch(
                          value: context.watch<ProfileCubit>().switchh,
                          onChanged: (v) {
                            context.read<ProfileCubit>().switchVisible(v);
                          },
                          activeColor: ColorConst.splashScreenColor,
                        )
                      ],
                    ),
                    Divider(
                      height: 20,
                      color: ColorConst.nuncOrciSedColor,
                    ),
                    Text(
                      "By switching on you let doctors access all your personal informations",
                      style: MyTextStyle.signUpViewWeWillSendTextStyle,
                    ),
                    const SizedBox(height: 25),
                    ProfileWidget.cancelAndSaveChange(context),
                    const SizedBox(height: 25),
                    ProfileWidget.addAnotherAccount(context),
                    const SizedBox(height: 10),
                    Text(
                      "You can add another accounts, for example, for your children or disabled relatives",
                      style: MyTextStyle.signUpViewWeWillSendTextStyle,
                    ),
                    const SizedBox(height: 25),
                    ProfileWidget.logOut(context),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  MyAppBar _appBar(BuildContext context) {
    return MyAppBar(
      context: context,
      title: const Text("Mavlonov Boburjon"),
      centerTitle: true,
      preferedSizeHeight: 0.07,
      iconTheme: IconThemeData(color: ColorConst.splashScreenColor),
      bottom: PreferredSize(
        preferredSize: const Size(1, 1),
        child: Divider(
          height: 0.5,
          color: ColorConst.nuncOrciSedColor,
        ),
      ),
    );
  }
}
