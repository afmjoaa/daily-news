import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ThemeType { light, dark }

class ThemeState {
  final ThemeData themeData;
  final ThemeType themeType;

  ThemeState(this.themeData, this.themeType);
}

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(_buildLightTheme(), ThemeType.light));

  void toggleTheme() {
    emit(state.themeType == ThemeType.light
        ? ThemeState(_buildDarkTheme(), ThemeType.dark)
        : ThemeState(_buildLightTheme(), ThemeType.light));
  }

  static ThemeData _buildLightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      fontFamily: 'Nunito',
      colorScheme: const ColorScheme.light(
        primary: Colors.green,
        onPrimary: Colors.white, // Text color on the primary color
        secondary: Colors.blue, // Example secondary color
        onSecondary: Colors.white, // Text color on the secondary color
        error: Colors.red, // Error color
        onError: Colors.white, // Text color on the error color
        background: Colors.white, // Background color for light theme
        onBackground: Colors.black, // Text color on the background for light theme
        surface: Colors.grey, // Surface color
        onSurface: Colors.black,
      )
    );
  }

  static ThemeData _buildDarkTheme() {
    return ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        fontFamily: 'Nunito',
        colorScheme: const ColorScheme.dark(
          primary: Colors.green,
          onPrimary: Colors.white, // Text color on the primary color for dark theme
          secondary: Colors.blue, // Example secondary color for dark theme
          onSecondary: Colors.white, // Text color on the secondary color for dark theme
          error: Colors.red, // Error color for dark theme
          onError: Colors.white, // Text color on the error color for dark theme
          background: Colors.black, // Background color for dark theme
          onBackground: Colors.white, // Text color on the background for dark theme
          surface: Colors.grey, // Surface color for dark theme
          onSurface: Colors.white,
        )
    );
  }
}
