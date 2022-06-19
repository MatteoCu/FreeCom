import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  final TextTheme textTheme;

   MyTheme(this.textTheme);

  ThemeData getTheme() {
    return ThemeData(
        appBarTheme:AppBarTheme(elevation: 0, color:Colors.greenAccent[400]),
        primaryIconTheme:const IconThemeData(color: Colors.white),
        brightness: Brightness.dark,
        textTheme: GoogleFonts.rubikTextTheme(textTheme),
        primarySwatch: Colors.green,
  
      );
  }
}
