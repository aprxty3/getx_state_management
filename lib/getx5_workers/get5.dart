// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getx_state_management/getx5_workers/controller.dart';

// class Get5 extends StatelessWidget {
//   final myC = Get.put(Controller());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Text Field'),
//         actions: [
//           IconButton(
//             onPressed: () => myC.reset(),
//             icon: Icon(
//               Icons.refresh,
//             ),
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Obx(
//                 () => Text(
//                   'Terjadi sesuatu: ${myC.count} x',
//                   style: TextStyle(
//                     fontSize: 30,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               TextField(
//                 onChanged: (value) => myC.change(),
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
