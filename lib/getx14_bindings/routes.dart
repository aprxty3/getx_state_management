import 'package:get/get.dart';
import 'package:getx_state_management/getx14_bindings/route_name.dart';
import 'package:getx_state_management/getx6_navigation/routes/route_name.dart';

import 'controller.dart';
import 'count_page.dart';
import 'get14.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: RouteName.home,
      page: () => Get14(),
    ),
    GetPage(
      name: RouteName.count,
      page: () => CountPage(),
      binding: BindingsBuilder(
        () {
          Get.put(CountController());
        },
      ),
    ),
  ];
}
