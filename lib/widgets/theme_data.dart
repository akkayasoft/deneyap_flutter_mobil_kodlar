import 'package:flutter/material.dart';

class ThemeAyarlari extends StatelessWidget {
  const ThemeAyarlari({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Tema Ayarları',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
