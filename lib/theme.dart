import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4285740619),
      surfaceTint: Color(4287384160),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4288502127),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4284301642),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4286866798),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4284760354),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4287456579),
      onTertiaryContainer: Color(4294967295),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294965496),
      onSurface: Color(4280293915),
      onSurfaceVariant: Color(4283581255),
      outline: Color(4286870391),
      outlineVariant: Color(4292264390),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281741104),
      inversePrimary: Color(4294947272),
      primaryFixed: Color(4294957538),
      onPrimaryFixed: Color(4281992989),
      primaryFixedDim: Color(4294947272),
      onPrimaryFixedVariant: Color(4285543240),
      secondaryFixed: Color(4294957539),
      onSecondaryFixed: Color(4281013533),
      secondaryFixedDim: Color(4293115335),
      onSecondaryFixedVariant: Color(4284170056),
      tertiaryFixed: Color(4294958274),
      onTertiaryFixed: Color(4281210112),
      tertiaryFixedDim: Color(4293901716),
      onTertiaryFixedVariant: Color(4284563232),
      surfaceDim: Color(4293187545),
      surfaceBright: Color(4294965496),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294897906),
      surfaceContainer: Color(4294503404),
      surfaceContainerHigh: Color(4294108647),
      surfaceContainerHighest: Color(4293713889),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4285214532),
      surfaceTint: Color(4287384160),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4288502127),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4283841348),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4286866798),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4284300061),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4287456579),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965496),
      onSurface: Color(4280293915),
      onSurfaceVariant: Color(4283318083),
      outline: Color(4285225823),
      outlineVariant: Color(4287133306),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281741104),
      inversePrimary: Color(4294947272),
      primaryFixed: Color(4289093494),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4287186781),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4287392885),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4285682781),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4287982665),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4286207027),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293187545),
      surfaceBright: Color(4294965496),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294897906),
      surfaceContainer: Color(4294503404),
      surfaceContainerHigh: Color(4294108647),
      surfaceContainerHighest: Color(4293713889),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4282519075),
      surfaceTint: Color(4287384160),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4285214532),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281473827),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4283841348),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281801474),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284300061),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965496),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4281147684),
      outline: Color(4283318083),
      outlineVariant: Color(4283318083),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281741104),
      inversePrimary: Color(4294960875),
      primaryFixed: Color(4285214532),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283439406),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4283841348),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282263086),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284300061),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282590728),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293187545),
      surfaceBright: Color(4294965496),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294897906),
      surfaceContainer: Color(4294503404),
      surfaceContainerHigh: Color(4294108647),
      surfaceContainerHighest: Color(4293713889),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294947272),
      surfaceTint: Color(4294947272),
      onPrimary: Color(4283702578),
      primaryContainer: Color(4286660951),
      onPrimaryContainer: Color(4294965239),
      secondary: Color(4293115335),
      onSecondary: Color(4282526001),
      secondaryContainer: Color(4285156694),
      onSecondaryContainer: Color(4294964983),
      tertiary: Color(4293901716),
      onTertiary: Color(4282919180),
      tertiaryContainer: Color(4285615405),
      onTertiaryContainer: Color(4294965234),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279767571),
      onSurface: Color(4293713889),
      onSurfaceVariant: Color(4292264390),
      outline: Color(4288646288),
      outlineVariant: Color(4283581255),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293713889),
      inversePrimary: Color(4287384160),
      primaryFixed: Color(4294957538),
      onPrimaryFixed: Color(4281992989),
      primaryFixedDim: Color(4294947272),
      onPrimaryFixedVariant: Color(4285543240),
      secondaryFixed: Color(4294957539),
      onSecondaryFixed: Color(4281013533),
      secondaryFixedDim: Color(4293115335),
      onSecondaryFixedVariant: Color(4284170056),
      tertiaryFixed: Color(4294958274),
      onTertiaryFixed: Color(4281210112),
      tertiaryFixedDim: Color(4293901716),
      onTertiaryFixedVariant: Color(4284563232),
      surfaceDim: Color(4279767571),
      surfaceBright: Color(4282332985),
      surfaceContainerLowest: Color(4279373070),
      surfaceContainerLow: Color(4280293915),
      surfaceContainer: Color(4280557087),
      surfaceContainerHigh: Color(4281280554),
      surfaceContainerHighest: Color(4282004276),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294948812),
      surfaceTint: Color(4294947272),
      onPrimary: Color(4281532951),
      primaryContainer: Color(4291197842),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293378507),
      onSecondary: Color(4280619031),
      secondaryContainer: Color(4289366161),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294164888),
      onTertiary: Color(4280684800),
      tertiaryContainer: Color(4290021475),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279767571),
      onSurface: Color(4294965753),
      onSurfaceVariant: Color(4292593354),
      outline: Color(4289830562),
      outlineVariant: Color(4287725443),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293713889),
      inversePrimary: Color(4285609033),
      primaryFixed: Color(4294957538),
      onPrimaryFixed: Color(4281008146),
      primaryFixedDim: Color(4294947272),
      onPrimaryFixedVariant: Color(4284162615),
      secondaryFixed: Color(4294957539),
      onSecondaryFixed: Color(4280224530),
      secondaryFixedDim: Color(4293115335),
      onSecondaryFixedVariant: Color(4282986295),
      tertiaryFixed: Color(4294958274),
      onTertiaryFixed: Color(4280224768),
      tertiaryFixedDim: Color(4293901716),
      onTertiaryFixedVariant: Color(4283313937),
      surfaceDim: Color(4279767571),
      surfaceBright: Color(4282332985),
      surfaceContainerLowest: Color(4279373070),
      surfaceContainerLow: Color(4280293915),
      surfaceContainer: Color(4280557087),
      surfaceContainerHigh: Color(4281280554),
      surfaceContainerHighest: Color(4282004276),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294965753),
      surfaceTint: Color(4294947272),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294948812),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294965753),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4293378507),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294966008),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4294164888),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279767571),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294965753),
      outline: Color(4292593354),
      outlineVariant: Color(4292593354),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293713889),
      inversePrimary: Color(4283176491),
      primaryFixed: Color(4294959078),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294948812),
      onPrimaryFixedVariant: Color(4281532951),
      secondaryFixed: Color(4294959079),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4293378507),
      onSecondaryFixedVariant: Color(4280619031),
      tertiaryFixed: Color(4294959564),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4294164888),
      onTertiaryFixedVariant: Color(4280684800),
      surfaceDim: Color(4279767571),
      surfaceBright: Color(4282332985),
      surfaceContainerLowest: Color(4279373070),
      surfaceContainerLow: Color(4280293915),
      surfaceContainer: Color(4280557087),
      surfaceContainerHigh: Color(4281280554),
      surfaceContainerHighest: Color(4282004276),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
