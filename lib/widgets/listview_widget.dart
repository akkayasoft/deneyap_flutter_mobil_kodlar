import 'package:flutter/material.dart';

class ListviewWidget extends StatelessWidget {
  const ListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var listem = ['ekmek', 'süt', 'yumurta', 'peynir', 'zeytin'];
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView.builder(
          itemCount: listem.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Text(
                listem[index],
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              decoration: BoxDecoration(
                color: Colors.orange[200],
              ),
            );
          }),
    );
  }
}
