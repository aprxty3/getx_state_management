import 'package:flutter/material.dart';

class Get8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Halo'),
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
