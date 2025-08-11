import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
        primaryColor: const Color(0xFFC62828),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFC62828),
          iconTheme: IconThemeData(color: Color(0xFF545454)),
          elevation: 0,
          centerTitle: true,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF1A1A1A)),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(52),
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      );
}
