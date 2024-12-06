import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Ayarı'),
      ),
      body: Center(
        child: Text(
          textAlign: TextAlign.center,
          'Merhaba Flutter',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.roboto(
            fontSize: 50,
            color: Colors.tealAccent,
          ),
        ),
      ),
    );
  }
}
