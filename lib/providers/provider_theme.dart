import 'package:flutter/material.dart';

class ProviderTheme extends ChangeNotifier {
  ThemeData currentTheme;

  ProviderTheme({required bool isDarkMode})
      : currentTheme = isDarkMode
            ? ThemeData(
                useMaterial3: true, colorScheme: const ColorScheme.dark())
            : ThemeData(
                useMaterial3: true, colorScheme: const ColorScheme.light());
  // ? ThemeData.dark(useMaterial3: false)
  // : ThemeData.light(useMaterial3: false);

  setClaro() {
    currentTheme =
        ThemeData(useMaterial3: true, colorScheme: const ColorScheme.light());
    // currentTheme = ThemeData.light();
    print('THEME CLARO');
    notifyListeners();
  }

  setOscuro() {
    currentTheme =
        ThemeData(useMaterial3: true, colorScheme: const ColorScheme.dark());
    // currentTheme = ThemeData.dark();
    print('THEME OSCURO');
    notifyListeners();
  }
}
