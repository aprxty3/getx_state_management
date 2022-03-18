import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx19_getStorage/%20controller/auth.dart';
import 'package:getx_state_management/getx19_getStorage/%20controller/login_controller.dart';
import 'package:getx_state_management/getx19_getStorage/get19_0.dart';
import 'package:getx_state_management/getx19_getStorage/get19_1.dart';
import 'package:getx_state_management/getx19_getStorage/route/app_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final loginC = Get.put(LoginC());
  final authC = Get.put(AuthC());

  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
          theme: ThemeData.light(),
          home: authC.isAuth.isTrue ? Get19_0() : Get19_1(),
          getPages: AppPage.pages,
        ));
  }
}
