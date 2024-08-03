import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.backgroundColor,
  primaryColor: AppColors.primaryColor,
  useMaterial3: true,
  colorScheme:
      ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 56, 45, 45)),
  primaryTextTheme: primaryTextTheme,
  textTheme: primaryTextTheme,
);

final TextTheme primaryTextTheme = GoogleFonts.montserratTextTheme().copyWith(
  titleLarge: GoogleFonts.montserrat(
    fontSize: 24,
    fontWeight: FontWeight.w700,
  ),
  titleMedium: GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  ),
  titleSmall: GoogleFonts.montserrat(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  ),
  labelLarge: GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  ),
  labelMedium: GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  ),
  labelSmall: GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w600,
  ),
  bodyLarge: GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  ),
  bodyMedium: GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
  bodySmall: GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  ),
);
