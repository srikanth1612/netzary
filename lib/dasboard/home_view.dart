import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netzary/Models/dashboard_home_model.dart';
import 'package:netzary/custom_widgets/custom_pick_widget.dart';
import 'package:netzary/dasboard/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: controller.obx(
      (data) => HomePicks(homeData: data),
      onLoading: const Center(child: CircularProgressIndicator()),
    ));
  }
}

class HomePicks extends StatelessWidget {
  final DashboardHomeModel homeData;
  const HomePicks({Key? key, required this.homeData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          const SizedBox(
            height: 200,
          ),
          Container(
            height: 200,
            width: Get.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: homeData.categories?.length ?? 0,
                itemBuilder: (context, index) {
                  return const CustomPickWidget();
                }),
          ),
        ],
      ),
    );
  }
}
