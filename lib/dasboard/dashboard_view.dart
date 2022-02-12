import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netzary/dasboard/dashboard_controller.dart';

import 'home_view.dart';

class DashBoardView extends GetView<DashboardController> {
  const DashBoardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: controller,
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: true,
          body: DashboardIndexStackView(controller: controller),
          bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: const TextStyle(
              fontSize: 12.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: const TextStyle(color: Colors.lightGreen),
            selectedItemColor: Colors.black,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(Icons.home),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(Icons.explore),
                ),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(Icons.favorite),
                ),
                label: 'Saved',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(Icons.notifications),
                ),
                label: 'Notifications',
              ),
            ],
          ),
        );
      },
    );
  }
}

class DashboardIndexStackView extends StatelessWidget {
  final DashboardController controller;

  const DashboardIndexStackView({Key? key, required this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IndexedStack(
        index: controller.tabIndex,
        children: [
          const HomeView(),
          Container(
            color: Colors.blueGrey,
          ),
          Container(
            color: Colors.red[100],
          ),
          Container(
            color: Colors.green[100],
          )
        ],
      ),
    );
  }
}
