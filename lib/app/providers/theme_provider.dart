import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  final SharedPreferencesAsync _preferences = SharedPreferencesAsync();

  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  Future<void> loadTheme() async {
    final value = await _preferences.getString("themeMode");

    _themeMode = ThemeMode.values.firstWhere(
      (element) => element.name == value,
      orElse: () => ThemeMode.system
    );

    notifyListeners();
  }

  Future<void> changeTheme(ThemeMode mode) async {
    _themeMode = mode;
    notifyListeners();

    await _preferences.setString("themeMode", mode.name);
  }
}