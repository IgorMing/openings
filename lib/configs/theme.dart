import 'package:flutter/material.dart';

class AppTheme {
  TextTheme get getTextTheme {
    return TextTheme(
      // TODO: this color is just for testing the theme attribute below
      bodyText1: TextStyle(color: Colors.red),
      bodyText2: TextStyle(color: Colors.black),
    );
  }

  ThemeData get getTheme {
    return ThemeData(
      primaryColor: Color(0xff21222b),
      primaryColorLight: Color(0xff52575d),
      accentColor: Color(0xfffddb3a),
      cardTheme: CardTheme(color: Colors.grey),
      textTheme: this.getTextTheme,
      brightness: Brightness.dark,
    );
  }
}
