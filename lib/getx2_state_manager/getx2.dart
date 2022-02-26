// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getx_state_management/getx2_state_manager/controller/count_control.dart';
// import 'package:getx_state_management/getx2_state_manager/models/orang.dart';
// import './controller/orang_controlle.dart';

// class GetX2 extends StatelessWidget {
//   // final orangC = Get.put(OrangController());
//   // // var orang = Orang(nama: 'joni', umur: 25).obs;
//   // // var count = 0.obs;
//   // // void add() {
//   // //   count++;
//   // // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: GetBuilder<CountControl>(
//           init: CountControl(),
//           builder: (controller) => Text(
//             'Angka ${controller.count}',
//             style: TextStyle(fontSize: 30),
//           ),
//         ),

//         //     Text(
//         //   'Nama Saya ',
//         //   style: TextStyle(fontSize: 30),
//         // ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Get.find<CountControl>().increment();
//           // orangC.changeUppercase();
//           // // orang.update((_) {
//           // //   orang.value.nama = orang.value.nama.toString().toUpperCase();
//           // // });
//         },
//       ),
//     );
//   }
// }
