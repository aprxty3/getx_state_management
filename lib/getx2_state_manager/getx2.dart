import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx2_state_manager/models/orang.dart';
import './controller/orang_controlle.dart';

class GetX2 extends StatelessWidget {
  final orangC = Get.put(OrangController());
  // var orang = Orang(nama: 'joni', umur: 25).obs;
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
            'Nama Saya ${orangC.orang.nama}',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          orangC.changeUppercase();
          // orang.update((_) {
          //   orang.value.nama = orang.value.nama.toString().toUpperCase();
          // });
        },
      ),
    );
  }
}
