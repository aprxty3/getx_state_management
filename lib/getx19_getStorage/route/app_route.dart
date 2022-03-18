import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx19_getStorage/get19_0.dart';
import 'package:getx_state_management/getx19_getStorage/get19_1.dart';

import 'route_name.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: RouteName.home,
      page: () => Get19_0(),
    ),
    GetPage(
      name: RouteName.login,
      page: () => Get19_1(),
    ),
  ];
}
