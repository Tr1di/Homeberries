import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.deepPurple,
    brightness: .light,
  ),
  textTheme: TextTheme(
    headlineMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold
    ),
    bodyMedium: TextStyle(
      fontSize: 14
    )
  ),
  cardTheme: CardThemeData(
    elevation: 10,
  )
);

final darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.deepPurple,
    brightness: .dark,
  ),
  textTheme: TextTheme(
    headlineMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold
    ),
    bodyMedium: TextStyle(
      fontSize: 14
    )
  ),

  // Просто поиздевался для примера
  cardTheme: CardThemeData(
    elevation: 10,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.circular(100),
    ),
    shadowColor: Colors.deepPurple,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      maximumSize: const Size(double.infinity, 120),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(12)
      )
    )
  )
);