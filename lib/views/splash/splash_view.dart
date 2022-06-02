import 'package:emed/core/constants/color_const.dart';
import 'package:emed/views/splash/splash_cubit.dart';
import 'package:emed/views/splash/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit(context),
      child: Scaffold(
        backgroundColor: ColorConst.splashScreenColor,
        body: BlocConsumer<SplashCubit, SplashState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Center(
              child: SvgPicture.asset('assets/icons/group33665.svg'),
            );
          },
        ),
      ),
    );
  }
}
