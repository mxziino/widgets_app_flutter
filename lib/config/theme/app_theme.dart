import 'package:flutter/material.dart';

// generate list of colors
const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
];

class AppTheme {
  // define my index
  final int selectedColor;
  final bool isDarkMode;

  //create AppTheme constructor and add assertions to check errors
  AppTheme({this.isDarkMode = false, this.selectedColor = 0})
      : assert(
          selectedColor >= 0,
          'Selected color must be equal or greater than 0',
        ),
        assert(
          selectedColor < colorList.length,
          'Selected color must less or equal than ${colorList.length - 1}',
        );

  // create my getTheme function that returns the theme with the colorSchemeSeed of the selected color
  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: false,
        ),
      );
}
