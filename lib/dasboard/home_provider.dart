import 'package:get/get.dart';

class HomeProvider extends GetConnect {
  Future<dynamic> getHomeData() async {
    final response = await get('https://milkiyat.bangalore2.com/api/home/');
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body;
    }
  }
}
