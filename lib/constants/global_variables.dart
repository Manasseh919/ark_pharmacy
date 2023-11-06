import 'package:flutter/material.dart';

String uri = 'http://localhost:4000';

class GlobalVariables {
  // COLORS
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(32, 38, 57, 255),
      Color.fromARGB(63, 76, 119, 255),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(26, 36, 33, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;
}
