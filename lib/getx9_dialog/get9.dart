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
              backgroundColor: Colors.blueAccent,
              radius: 10,
              barrierDismissible: false,

              //Default
              textCancel: 'Batal',
              cancelTextColor: Colors.green,
              onCancel: () {
                Get.back();
              },

              //Custom
              cancel: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('Batal'),
              ),

              //Default
              textConfirm: 'Oke',
              confirmTextColor: Colors.red,
              onConfirm: () {},

              //Custom
              confirm: ElevatedButton(
                onPressed: () {},
                child: Text('oke'),
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Pilihan 1'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Pilihan 2'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Pilihan 3'),
                ),
              ]);
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
