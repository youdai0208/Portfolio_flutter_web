import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const int myWhite = 0xfff4f5f7;
const int myOrange = 0xffff8f00;
const Color textColor = Colors.black87;

ThemeData createThemeData(){
  return ThemeData(
    backgroundColor: const Color(myWhite),
    colorScheme: ColorScheme.fromSwatch(
        primarySwatch: const MaterialColor(
          myWhite,
          <int, Color>{
             50: Color(0xFFF9FAFC),
            100: Color(myWhite),
            200: Color(0xFFEDEEF0),
            300: Color(0xFFDFE0E2),
            400: Color(0xFFBCBDBF),
            500: Color(0xFF9D9EA0),
            600: Color(0xFF747577),
            700: Color(0xFF606163),
            800: Color(0xFF414243),
            900: Color(0xFF202122),
          },
        ),
    ).copyWith(
      secondary: const MaterialColor(
          myOrange,
        <int, Color>{
           50: Color(0xFFFFF8E1),
          100: Color(0xFFFFECB3),
          200: Color(0xFFFFE183),
          300: Color(0xFFFFD650),
          400: Color(0xFFFFCB29),
          500: Color(0xFFFFC20A),
          600: Color(0xFFFFB402),
          700: Color(0xFFFFA101),
          800: Color(myOrange),
          900: Color(0xFFFF7100),
        }
      )
    ),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: textColor,
          textStyle: const TextStyle(
            fontSize: 18,
            // fontWeight: FontWeight.bold,
            letterSpacing: 2.5,
          ),
        ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(myWhite),
      titleTextStyle: TextStyle(
        color: textColor,
        fontSize: 20
      ),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: Colors.black,
        letterSpacing: 2.5,
        // height: 1.5
      ),
      headline2: TextStyle(
        color: Colors.black,
        letterSpacing: 2.5,
      ),
      headline4: TextStyle(
        letterSpacing: 2.5,
        height: 2.0,
      )
    ),
  );
}

