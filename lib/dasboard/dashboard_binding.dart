import 'package:get/get.dart';
import 'package:netzary/dasboard/dashboard_controller.dart';
import 'package:netzary/dasboard/home_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
