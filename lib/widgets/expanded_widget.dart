import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 400,
            height: 100,
            color: Colors.red,
            child: Center(
                child: Text(
              'Galatasaray',
            )),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Text(
                'Şanlıurfaspor',
                style: TextStyle(fontSize: 60),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
