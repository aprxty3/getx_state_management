import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/day1_counter/getx1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GetX1(),
    );
  }
}
