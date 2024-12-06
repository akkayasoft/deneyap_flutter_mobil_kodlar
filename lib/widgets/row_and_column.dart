import 'package:flutter/material.dart';

class RowAndColumn extends StatelessWidget {
  const RowAndColumn({super.key});

  @override
  Widget build(BuildContext context) {
    var sembol = Icon(
      Icons.adb_outlined,
      size: 50,
      color: Colors.pink,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Row and Column'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [sembol, sembol, sembol],
        ),
      ),
    );
  }
}
