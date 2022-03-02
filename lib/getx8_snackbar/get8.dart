import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Get8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(
          //     content: Text('Halo'),
          //   ),
          // );

          Get.snackbar('Ini Judul', 'Ini Isi');
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
