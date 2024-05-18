// ignore_for_file: deprecated_member_use, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'colors.dart';

class ThemeDataApp {
  static TextTheme lightTextTheme = const TextTheme(
    bodyText1: TextStyle(color: Colors.black, fontSize: 14),
  );

  static TextTheme darkTextTheme =
      const TextTheme(bodyText1: TextStyle(color: Colors.white, fontSize: 14));

  static ThemeData ThemeDataDark() {
    return ThemeData(
      primaryColor: primaryColorDark,
      primarySwatch: primaryColorDark,
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
          backgroundColor: kAppBarColorDark,
          elevation: 0,
          iconTheme: IconThemeData(
            color: primaryColorDark,
          )),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(foregroundColor: textFormFieldColor)),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          foregroundColor: primaryColorDark,
          backgroundColor: kWhiteColor,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: primaryColorDark, width: 1),
          ),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 0,
        unselectedItemColor: Colors.white,
        selectedItemColor: primaryColorDark,
      ),
      textTheme: darkTextTheme,
    );
  }

  static ThemeDataLight() {
    return ThemeData(
      primaryColor: primaryColorWhite,
      primarySwatch: primaryColorWhite,
      brightness: Brightness.light,
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          foregroundColor: kWhiteColor,
        ),
      ),
      appBarTheme: const AppBarTheme(
          backgroundColor: kWhiteColor,
          elevation: 0,
          iconTheme: IconThemeData(
            color: primaryColorWhite,
          )),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(foregroundColor: textFormFieldColor)),
      textTheme: lightTextTheme,
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          foregroundColor: primaryColorWhite,
          backgroundColor: kWhiteColor,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: primaryColorWhite, width: 1),
          ),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 0,
        unselectedItemColor: Colors.white,
        selectedItemColor: primaryColorDark,
      ),
    );
  }
}
