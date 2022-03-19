import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx19_getStorage/%20controller/auth.dart';
import 'package:getx_state_management/getx19_getStorage/%20controller/login_controller.dart';

class Get19_0 extends StatelessWidget {
  final auth = Get.find<AuthC>();
  final login = Get.find<LoginC>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ini Homepage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => auth.logOut(login.rememberMe.value),
        child: Icon(Icons.logout),
      ),
    );
  }
}
