import 'package:get/get.dart';
import 'package:netzary/dasboard/home_provider.dart';

class DashboardController extends GetxController {
  int tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;

    update();
  }
}
