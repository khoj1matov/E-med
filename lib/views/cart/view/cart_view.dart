import 'package:emed/core/constants/color_const.dart';
import 'package:emed/views/doctors/doctors_view.dart';
import 'package:emed/views/home/home_view.dart';
import 'package:emed/views/hospital/hospital_view.dart';
import 'package:emed/views/treatments/treatments_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: [
          HomeView(),
          TreatmentsView(),
          DoctorsView(),
          HospitalView(),
        ],
      ),
      bottomNavigationBar: TabBar(
        indicatorColor: Colors.transparent,
        controller: tabController,
        tabs: [
          tabs('home-fill', 0),
          tabs("syringe 1", 1),
          tabs("doctor 1", 2),
          tabs("hospital", 3),
        ],
        onTap: (v) {
          currentIndex = tabController.index;
          setState(() {});
        },
      ),
    );
  }

  Tab tabs(String iconName, numIndex) {
    return Tab(
      icon: SvgPicture.asset(
        "assets/icons/$iconName.svg",
        color: currentIndex == numIndex ? ColorConst.splashScreenColor : ColorConst.nuncOrciSedColor,
      ),
    );
  }
}
