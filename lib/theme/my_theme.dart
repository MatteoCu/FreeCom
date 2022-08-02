import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  final TextTheme textTheme;

  MyTheme(this.textTheme);

  ThemeData getTheme() {
    return ThemeData(
      appBarTheme:const AppBarTheme(elevation: 0, color: Color.fromARGB(255, 76, 77, 76)),
      primaryIconTheme: const IconThemeData(color: Colors.white),
      brightness: Brightness.dark,
      textTheme: GoogleFonts.kanitTextTheme(textTheme),
      primarySwatch: Colors.green,
      pageTransitionsTheme: const PageTransitionsTheme(builders: {TargetPlatform.android: CupertinoPageTransitionsBuilder(),}),
    );
  }
}
