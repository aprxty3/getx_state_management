import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Get17_3 extends StatelessWidget {
  const Get17_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hai ini third Page',
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Next Page',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
