import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx18_stateMixin/controlle.dart';

class Get18 extends GetView<MyC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ini Homepage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            controller.obx(
              (state) => Column(
                children: [
                  Text("ID : ${state!["id"]}"),
                  Text("Nama : ${state["first_name"] + state["last_name"]}"),
                  Text("Email : ${state["email"]}"),
                  Image.network("${state["avatar"]}"),
                ],
              ),
              onLoading: Text('Loading......'),
              onEmpty: Text('Belum ada Data'),
              onError: (error) => Text('Terjadi Kesalahan'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.getData(),
      ),
    );
  }
}
