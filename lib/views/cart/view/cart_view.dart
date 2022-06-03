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
  Color colorTabBar = Colors.black;

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
        children: const [
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
          tabs('home-fill', colorTabBar, 0),
          tabs("syringe 1", colorTabBar, 1),
          tabs("doctor 1", colorTabBar, 2),
          tabs("hospital", colorTabBar, 3),
        ],
        onTap: (v) {
          currentIndex = tabController.index;
          setState(() {});
        },
      ),
    );
  }

  Tab tabs(String iconName, color, numIndex) {
    return Tab(
      icon: SvgPicture.asset(
        "assets/icons/$iconName.svg",
        color: currentIndex == numIndex ? color : Colors.red,
      ),
    );
  }
}
