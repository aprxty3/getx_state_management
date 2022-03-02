import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Get9 extends StatelessWidget {
  const Get9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // showDialog(
          //   context: context,
          //   builder: (context) {
          //     return AlertDialog(
          //       title: Text('Ini Judul'),
          //       content: Text('Ini Deskripsi'),
          //     );
          //   },
          // );

          Get.defaultDialog(
            title: 'Ini Judul',
            middleText: 'Ini Deskripsi',
          );
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
