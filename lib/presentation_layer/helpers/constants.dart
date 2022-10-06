import 'package:flutter/material.dart';

const MaterialColor defaultColor = MaterialColor(
  0xffe35d57,
  <int, Color>{
    1:  Color.fromRGBO(227 , 93 , 87, 0.9),
  },
);

ThemeData themeData=ThemeData(
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor:defaultColor,
      backgroundColor: Colors.white
  ),
);

