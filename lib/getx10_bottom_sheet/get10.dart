import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Get10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // showModalBottomSheet(
          //   context: context,
          //   builder: (context) {
          //     return Container(
          //       // height: 200,
          //       color: Colors.amber,
          //       child: Center(
          //           child: Column(
          //         children: [
          //           Text('Halo'),
          //           TextField(
          //             decoration: InputDecoration(
          //               border: OutlineInputBorder(),
          //             ),
          //           ),
          //         ],
          //       )),
          //     );
          //   },
          // );

          Get.bottomSheet(
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                color: Colors.red,
              ),
              // height: 200,
              // color: Colors.amber,
              child: Center(
                child: Column(
                  children: [
                    Text('Halo'),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
