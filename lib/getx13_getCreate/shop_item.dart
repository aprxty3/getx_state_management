import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controller.dart';

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
