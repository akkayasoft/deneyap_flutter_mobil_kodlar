import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'uygulamalar/resim_uygulamasi.dart';
import 'uygulamalar/row_column_uygulamasi.dart';
import 'uygulamalar/seyahat_uygulamasi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleTextStyle:
              GoogleFonts.lato(fontSize: 40, color: Colors.tealAccent),
        ),
        brightness: Brightness.light,
        primaryColor: Colors.orange,
        textTheme: TextTheme(
          headlineLarge: GoogleFonts.lato(
            fontSize: 40,
            fontStyle: FontStyle.italic,
          ),
        ),

        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
      ),
      home: SeyahatUygulamasi(),
    );
  }
}
