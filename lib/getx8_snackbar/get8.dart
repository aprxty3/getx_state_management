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

          Get.snackbar(
            'Ini Judul',
            'Ini Isi',
            animationDuration: Duration(milliseconds: 100),
            backgroundColor: Colors.red,
            backgroundGradient: LinearGradient(
              colors: [
                Colors.green,
                Colors.purple,
              ],
            ),
            borderWidth: 2,
            borderColor: Colors.red,
            // snackPosition: SnackPosition.BOTTOM,
            // snackStyle: SnackStyle.GROUNDED,
            onTap: (_) {
              print('Ini Di Klik');
            },
            icon: Icon(Icons.ac_unit),
          );
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
