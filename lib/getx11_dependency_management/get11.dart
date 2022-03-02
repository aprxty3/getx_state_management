import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Get11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Get.to(() => NextPage()),
            icon: Icon(
              Icons.ac_unit,
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  // final MyController c = Get.find();
  final c = Get.put(MyController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Get.to(() => TextPage()),
            icon: Icon(
              Icons.ac_unit,
            ),
          ),
        ],
      ),
      body: Obx(() => Center(
            child: Text(
              '${c.count}',
              style: TextStyle(fontSize: 32),
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => c.add(),
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}

class TextPage extends StatelessWidget {
  final c = Get.find<MyController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: TextField(
            controller: c.textC,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}

class MyController extends GetxController {
  var count = 0.obs;
  var textC = TextEditingController();

  void add() {
    count++;
  }
}
