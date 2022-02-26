// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getx_state_management/getx1_counter/ujicoba.dart';
// import 'controller/counter_controller.dart';

// class GetX1 extends StatelessWidget {
//   final c = Get.find<CounterController>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Column(
//           children: [
//             Obx(
//               () => Text(
//                 'Angka ${c.counter}',
//                 style: TextStyle(
//                   fontSize: 38,
//                 ),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 IconButton(
//                   onPressed: () => c.increment(),
//                   icon: Icon(
//                     Icons.plus_one,
//                     size: 40,
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () => c.decrement(),
//                   icon: Icon(
//                     Icons.minimize,
//                     size: 40,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 32,
//             ),
//             IconButton(
//               onPressed: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => UjiCOba(),
//                 ),
//               ),
//               icon: Icon(
//                 Icons.swipe,
//                 size: 30,
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton:
//           FloatingActionButton(onPressed: () => c.changeTheme()),
//     );
//   }
// }
