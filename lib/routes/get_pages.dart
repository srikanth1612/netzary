import 'package:get/get.dart';
import 'package:netzary/dasboard/dashboard_binding.dart';
import 'package:netzary/dasboard/dashboard_view.dart';

import 'app_routes.dart';

class Routes {
  static List<GetPage> getAllPages() {
    return [
      GetPage(
          name: AppRoutes.dashboard,
          page: () => const DashBoardView(),
          bindings: [DashboardBinding()])
    ];
  }
}
