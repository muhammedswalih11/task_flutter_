import 'package:flutter/material.dart';

@immutable
class AppGradients extends ThemeExtension<AppGradients> {
  final Gradient? appBarGradient;

  const AppGradients({this.appBarGradient});

  @override
  AppGradients copyWith({Gradient? appBarGradient}) {
    return AppGradients(appBarGradient: appBarGradient ?? this.appBarGradient);
  }

  @override
  AppGradients lerp(ThemeExtension<AppGradients>? other, double t) {
    if (other is! AppGradients) return this;
    return AppGradients(
      appBarGradient: LinearGradient.lerp(
        appBarGradient as LinearGradient?,
        other.appBarGradient as LinearGradient?,
        t,
      ),
    );
  }
}

ThemeData lightMode = ThemeData(
  scaffoldBackgroundColor: Colors.white,

  colorScheme: ColorScheme.light(
    brightness: Brightness.light,
    primary: Colors.blueGrey.shade50,
    onPrimary: Colors.black, // all black text
    secondary: Colors.white,
    outline: Colors.blueGrey.shade200,
    onSecondary: Color.fromARGB(255, 8, 73, 126),
    onSecondaryContainer: Color(0xFFE8F2FF),
    onSurface: Color.fromARGB(255, 246, 242, 242),
    onSurfaceVariant: Color.fromARGB(255, 227, 232, 243),
    onSecondaryFixedVariant: Color.fromARGB(255, 21, 77, 122), //referpage title
    primaryFixedDim: Colors.white, // billlistsection background
    surfaceContainer: Color.fromARGB(255, 246, 251, 252),
    outlineVariant: Colors.transparent, // point earn card border
    tertiaryContainer: Color.fromARGB(
      255,
      227,
      236,
      250,
    ), // referal code box bg

    surfaceBright: Colors.grey[300]!,
    surfaceDim: Colors.grey[100]!,
    surfaceContainerLowest: Colors.white,
    tertiary: Color.fromARGB(255, 12, 66, 111), //billertilte
    surfaceTint: Color.fromARGB(255, 15, 121, 207), // recharge button
    surfaceContainerLow: Color.fromARGB(
      255,
      248,
      253,
      255,
    ), // delete close bill
  ),

  extensions: [
    AppGradients(
      appBarGradient: LinearGradient(
        colors: [Color.fromARGB(255, 184, 220, 236), Colors.white],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    ),
  ],
);

ThemeData darkMode = ThemeData(
  scaffoldBackgroundColor: Colors.black,

  colorScheme: ColorScheme.dark(
    brightness: Brightness.dark,
    primary: Color.fromARGB(255, 31, 30, 30),
    onPrimary: Colors.white,
    secondary: Colors.black,
    outline: Colors.white,
    onSecondary: Color.fromARGB(255, 8, 73, 126),
    onSecondaryContainer: Colors.black,
    onSurface: Colors.black,
    onSurfaceVariant: Colors.black,
    onSecondaryFixedVariant: Color.fromARGB(255, 89, 169, 235),
    primaryFixedDim: const Color.fromARGB(255, 31, 30, 30),
    surfaceContainer: Color.fromARGB(255, 31, 30, 30), // points earn card
    outlineVariant: Colors.white,
    tertiaryContainer: const Color.fromARGB(255, 37, 37, 37),
    surfaceBright: Color.fromARGB(255, 31, 30, 30),
    surfaceDim: Color.fromARGB(255, 31, 30, 30),
    surfaceContainerLowest: Colors.blue,
    tertiary: Colors.blue, //billertilte
    surfaceTint: Colors.white, // recharge button
    surfaceContainerLow: Color.fromARGB(255, 31, 30, 30), // delete close bill
  ),

  extensions: [
    AppGradients(
      appBarGradient: LinearGradient(
        colors: [Color(0xFF1C1C1C), Color(0xFF2B2B2B)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    ),
  ],
);
