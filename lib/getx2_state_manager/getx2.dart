import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx2_state_manager/models/orang.dart';

class GetX2 extends StatelessWidget {
  var orang = Orang(nama: 'joni', umur: 25).obs;
  // var count = 0.obs;
  // void add() {
  //   count++;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(
          () =>
              //  Text(
              //   'Angka $count',
              //   style: TextStyle(fontSize: 30),
              // ),
              Text(
            'Nama Saya ${orang.value.nama}',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          orang.update((_) {
            orang.value.nama = orang.value.nama.toString().toUpperCase();
          });
        },
      ),
    );
  }
}
