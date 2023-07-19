import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme textTheme() {
  return TextTheme(
    displayMedium: GoogleFonts.openSans(fontSize: 18.0, color: Colors.black),
    displaySmall: GoogleFonts.openSans(
        fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
    bodyMedium: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
    bodySmall: GoogleFonts.openSans(fontSize: 14.0, color: Colors.grey),
    titleSmall: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    centerTitle: false,
    color: Colors.white,
    elevation: 0.0,
    titleTextStyle: GoogleFonts.nanumGothic(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  );
}

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    appBarTheme: appBarTheme(),
  );
}
