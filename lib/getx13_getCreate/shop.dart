import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx13_getCreate/controller.dart';

class ShopPage extends StatelessWidget {
  final shopC = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoppage'),
      ),
      body: ListView(
        children: [
          ShopItem(),
          ShopItem(),
          ShopItem(),
          ShopItem(),
        ],
      ),
      floatingActionButton: CircleAvatar(
        child: Obx(() => Text(
              '${shopC.total_kuantitas}',
            )),
      ),
    );
  }
}

class ShopItem extends StatelessWidget {
  final shopC = Get.find<Controller>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: () {
            shopC.kuantitas.value--;
            shopC.total_kuantitas.value--;
          },
          icon: Icon(Icons.remove),
        ),
        Obx(() => Text(
              '${shopC.kuantitas}',
              style: TextStyle(fontSize: 25),
            )),
        IconButton(
          onPressed: () {
            shopC.kuantitas.value++;
            shopC.total_kuantitas.value++;
          },
          icon: Icon(Icons.add),
        ),
      ],
    );
  }
}
