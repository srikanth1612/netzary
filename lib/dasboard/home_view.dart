import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netzary/custom_widgets/custom_button.dart';
import 'package:netzary/custom_widgets/custom_search_widget.dart';
import 'package:netzary/custom_widgets/custom_slider_widget.dart';
import 'package:netzary/models/dashboard_home_model.dart';
import 'package:netzary/custom_widgets/custom_pick_widget.dart';
import 'package:netzary/dasboard/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black87,
        child: controller.obx((data) => HomePicks(homeData: data),
            onLoading: const Center(child: CircularProgressIndicator()),
            onError: (error) => CustomButtonWidget(
                  title: "Reload",
                  onPressed: () {
                    controller.getDashboardDataFromBackend();
                  },
                )));
  }
}

class HomePicks extends StatelessWidget {
  final DashboardHomeModel homeData;

  HomePicks({Key? key, required this.homeData}) : super(key: key);

  final HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 100,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: CustomSearchWidget(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButtonWidget(title: "FIND PROPERTY", onPressed: () {}),
              CustomButtonWidget(title: "POST A PROPERTY", onPressed: () {})
            ],
          ),
        ),
        CustomSliderWidget(
          sliderData: controller.slides,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Top picks", style: TextStyle(color: Colors.white)),
              Text("SEE ALL", style: TextStyle(color: Colors.white))
            ],
          ),
        ),
        SizedBox(
          height: 300,
          width: Get.width,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.topPicks.length > 10
                  ? 10
                  : controller.topPicks.length,
              itemBuilder: (context, index) {
                return CustomPickWidget(singleData: controller.topPicks[index]);
              }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Latest", style: TextStyle(color: Colors.white)),
              Text("SEE ALL", style: TextStyle(color: Colors.white))
            ],
          ),
        ),
        SizedBox(
          height: 312,
          width: Get.width,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.latestPicks.length > 10
                  ? 10
                  : controller.latestPicks.length,
              itemBuilder: (context, index) {
                return CustomPickWidget(
                    singleData: controller.latestPicks[index]);
              }),
        ),
      ],
    );
  }
}
