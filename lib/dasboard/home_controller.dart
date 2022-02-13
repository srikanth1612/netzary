import 'dart:convert';

import 'package:get/get.dart';
import 'package:netzary/models/dashboard_home_model.dart';
import 'package:netzary/dasboard/home_provider.dart';

class HomeController extends GetxController with StateMixin<dynamic> {
  List<Item> topPicks = [];
  List<Item> latestPicks = [];
  List<Item> slides = [];

  @override
  void onInit() {
    super.onInit();
    getDashboardDataFromBackend();
  }

  getDashboardDataFromBackend() {
    HomeProvider().getHomeData().then((value) {
      try {
        DashboardHomeModel jsonData =
            DashboardHomeModel.fromJson(jsonDecode(value));
        segregatingData(jsonData);
        change(jsonData, status: RxStatus.success());
      } catch (e) {
        change(null, status: RxStatus.error(e.toString()));
      }
    }, onError: (error) {
      change(null, status: RxStatus.error(error.toString()));
    });
  }

  segregatingData(DashboardHomeModel data) {
    topPicks =
        data.data!.firstWhere((element) => element.title == "Top Picks").items!;
    latestPicks =
        data.data!.firstWhere((element) => element.title == "Latest").items!;
    slides =
        data.data!.firstWhere((element) => element.type == "slides").items!;
  }
}
