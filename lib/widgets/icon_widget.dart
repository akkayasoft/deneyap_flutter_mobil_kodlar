import 'package:flutter/material.dart';

class IconWdget extends StatelessWidget {
  const IconWdget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.account_circle,
          size: 150,
          color: Colors.indigo,
          semanticLabel: 'Hesap İkonu',
        ),
      ),
    );
  }
}
