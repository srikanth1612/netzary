import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/app_routes.dart';
import 'routes/get_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Srikanth",
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.dashboard,
      getPages: Routes.getAllPages(),
    );
  }
}
