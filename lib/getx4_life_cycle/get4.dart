// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class Get4 extends StatelessWidget {
//   // final countC = Get.put(CountController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           IconButton(
//             onPressed: () => Get.to(() => OtherPage()),
//             icon: Icon(
//               Icons.chevron_right,
//             ),
//           ),
//         ],
//         title: Text('Home Page'),
//       ),
//       body: Center(
//         child: Text('HOMEPAGE'),
//       ),
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: () {
//       //     countC.add();
//       //   },
//       // ),
//     );
//   }
// }

// // class CountWidget extends StatelessWidget {
// //   // final c = Get.find<CountController>();
// //   @override
// //   Widget build(BuildContext context) {
// //     return GetBuilder<CountController>(
// //       initState: (state) => print('initstate'),
// //       dispose: (state) => print('dispose'),
// //       didChangeDependencies: (_) => print('didChangeDependencies'),
// //       didUpdateWidget: (oldWidget, state) => print('didUpdateWidget'),
// //       builder: (c) => Center(
// //         child: Text('Angka ${c.count}'),
// //       ),
// //     );
// //   }
// // }

// class OtherPage extends StatelessWidget {
//   final textC = Get.put(TextControl());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Text Page'),
//       ),
//       body: Center(
//         child: TextField(
//           controller: textC.myC,
//         ),
//       ),
//     );
//   }
// }

// // class CountController extends GetxController {
// //   var count = 0;

// //   void add() {
// //     count++;
// //     update();
// //   }
// // }

// class TextControl extends GetxController {
//   final myC = TextEditingController();
// }
