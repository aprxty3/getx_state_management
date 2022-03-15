import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Get16 extends StatelessWidget {
  const Get16({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.changeTheme(
          Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
        ),
      ),
    );
  }
}
