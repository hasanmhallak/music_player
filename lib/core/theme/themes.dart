import 'package:flutter/material.dart';

//* Neutral
const kBackground = Color.fromARGB(255, 43, 45, 85);
const kOnBackground = Color.fromARGB(255, 113, 115, 174);

const kSurface = kBackground;
const kOnSurface = kTertiary;
const kSurfaceVariant = Colors.red;
const kOnSurfaceVariant = Colors.red;
const kSurfaceTint = Colors.red;
const kInverseSurface = Colors.red;
const kOnInverseSurface = Colors.red;

/// dividers and outline decoration.
const kOutline = Colors.red;
const kOutlineVariant = Colors.red;

/// [check here](https://m3.material.io/components/bottom-sheets/specs#dd0a1a63-a91f-406d-9acc-da015390f586)
const kScrim = Color(0xFF000000);

//* Primary
const kPrimary = Colors.red;
const kOnPrimary = Colors.red;
// FAB
const kPrimaryContainer = Colors.red;
// FAB Text
const konPrimaryContainer = Colors.red;
const kInversePrimary = Colors.red;

//* Secondary
const kSecondary = Colors.red;
const kOnSecondary = Colors.red;
const kSecondaryContainer = Colors.red;
const kOnSecondaryContainer = Colors.red;

//* Tertiary
// appbar text
const kTertiary = Color.fromARGB(255, 139, 142, 205);
const kOnTertiary = Colors.red;
const kTertiaryContainer = Colors.red;
const kOnTertiaryContainer = Colors.red;

//* Error
const kError = Color(0xffD53333);
const kOnError = Colors.white;
const kErrorContainer = Colors.white;
const kOnErrorContainer = Colors.white;

//

/// this values was selected to fit with cario font.
const _textTheme = TextTheme(
  displayLarge: TextStyle(height: 1.2),
  displayMedium: TextStyle(height: 1.2),
  displaySmall: TextStyle(height: 1.2),
  headlineLarge: TextStyle(height: 1.2),
  headlineMedium: TextStyle(height: 1.2),
  headlineSmall: TextStyle(height: 1.2),
  titleLarge: TextStyle(height: 1.2),
  titleMedium: TextStyle(height: 1.2),
  titleSmall: TextStyle(height: 1.2),
  bodyLarge: TextStyle(height: 1.2),
  bodyMedium: TextStyle(height: 1.2),
  bodySmall: TextStyle(height: 1.2),
  labelLarge: TextStyle(height: 1.2),
  labelSmall: TextStyle(height: 1.2),
);

final _iconButtonStyle = IconButton.styleFrom();

final _textButtonStyle = TextButton.styleFrom();

/// A class defining different themes for the application.
class Themes {
  static ThemeData dark() {
    return ThemeData.dark(useMaterial3: true).copyWith(
      dialogBackgroundColor: kBackground,
      appBarTheme: const AppBarTheme(
        color: kBackground,
        surfaceTintColor: kBackground,
        centerTitle: true,
      ),
      scaffoldBackgroundColor: kBackground,
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        background: kBackground,
        onBackground: kOnBackground,
        //
        //
        primary: kPrimary,
        onPrimary: kOnPrimary,
        primaryContainer: kPrimaryContainer,
        onPrimaryContainer: konPrimaryContainer,
        inversePrimary: kInversePrimary,
        //
        //
        secondary: kSecondary,
        onSecondary: kOnSecondary,
        secondaryContainer: kSecondaryContainer,
        onSecondaryContainer: kOnSecondaryContainer,
        //
        //
        tertiary: kTertiary,
        onTertiary: kOnTertiary,
        tertiaryContainer: kTertiaryContainer,
        onTertiaryContainer: kOnTertiaryContainer,
        //
        //
        error: kError,
        onError: kOnError,
        errorContainer: kErrorContainer,
        onErrorContainer: kOnErrorContainer,
        //
        //
        surface: kSurface,
        onSurface: kOnSurface,
        surfaceTint: kSurfaceTint,
        surfaceVariant: kSurfaceVariant,
        onSurfaceVariant: kOnSurfaceVariant,
        inverseSurface: kInverseSurface,
        onInverseSurface: kOnInverseSurface,
        //
        //
        outline: kOutline,
        outlineVariant: kOutlineVariant,
        scrim: kScrim,
        shadow: kTertiary,
      ),
      textTheme: _textTheme.apply(
        bodyColor: kOnBackground,
      ),
      iconTheme: const IconThemeData(color: kTertiary),
      iconButtonTheme: IconButtonThemeData(style: _iconButtonStyle),
      textButtonTheme: TextButtonThemeData(style: _textButtonStyle),
    );
  }
}
