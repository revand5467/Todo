import 'package:flutter/material.dart';

class Themes {
  ThemeData blueTheme = ThemeData(
    appBarTheme: AppBarTheme(
        color: Color.fromARGB(255, 240, 240, 240),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 38, 0, 255))),
    backgroundColor: Color.fromARGB(255, 240, 240, 240),
    primaryColor: Color.fromARGB(255, 255, 255, 255),
    textTheme: TextTheme(
      subtitle2: TextStyle(
        color: Color.fromARGB(255, 38, 0, 255),
      ),
    ),
  );

  ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
        color: Color.fromARGB(255, 12, 12, 12),
        iconTheme: IconThemeData(color: Colors.white)),
    backgroundColor: Color.fromARGB(255, 12, 12, 12),
    primaryColor: Color.fromARGB(255, 29, 29, 29),
    textTheme: TextTheme(
      subtitle2: TextStyle(
        color: Color.fromARGB(255, 236, 236, 236),
      ),
    ),
  );

  ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
        color: Color.fromARGB(255, 240, 240, 240),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0))),
    backgroundColor: Color.fromARGB(255, 240, 240, 240),
    primaryColor: Color.fromARGB(255, 255, 255, 255),
    textTheme: TextTheme(
      subtitle2: TextStyle(
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    ),
  );
}
