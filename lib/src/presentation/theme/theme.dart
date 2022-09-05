import 'package:ease_split/src/presentation/theme/color_schemes.dart';
import 'package:flutter/material.dart';

final appTheme = ThemeData(
  colorScheme: lightColorScheme,
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    color: Colors.transparent,
    elevation: 0,
  ),
  chipTheme: ChipThemeData(
    backgroundColor: lightColorScheme.surfaceTint,
    padding: const EdgeInsets.all(2),
    labelPadding: const EdgeInsets.symmetric(horizontal: 8),
    shape: const StadiumBorder(),
    labelStyle: TextStyle(
      color: lightColorScheme.onSecondaryContainer,
      fontSize: 16,
    ),
    brightness: Brightness.light,
  ),
  cardColor: lightColorScheme.surfaceVariant,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: lightColorScheme.primary,
      shape: const StadiumBorder(),
      padding: const EdgeInsets.symmetric(vertical: 16),
      textStyle: TextStyle(
        color: lightColorScheme.onPrimary,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
  ),
  listTileTheme: ListTileThemeData(
    dense: false,
    style: ListTileStyle.list,
    iconColor: lightColorScheme.onSurface,
    tileColor: lightColorScheme.surface,
    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
  ),
  iconTheme: IconThemeData(
    color: lightColorScheme.onSurface,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    filled: true,
    fillColor: lightColorScheme.primaryContainer,
  ),
);
