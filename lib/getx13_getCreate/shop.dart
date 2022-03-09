import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx13_getCreate/controller.dart';
import 'package:getx_state_management/getx13_getCreate/shop_item.dart';

class ShopPage extends StatelessWidget {
  final shopC = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoppage'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ShopItem(),
      ),
      floatingActionButton: CircleAvatar(
        child: Obx(() => Text(
              '${shopC.total_kuantitas}',
            )),
      ),
    );
  }
}
