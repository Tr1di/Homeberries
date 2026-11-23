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
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.circular(24),
    ),
    shadowColor: Colors.deepPurple,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12)
      )
    )
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
      borderRadius: BorderRadiusGeometry.circular(24),
    ),
    shadowColor: Colors.deepPurple,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepPurple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(12)
      )
    )
  ),

  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    )
  )
);