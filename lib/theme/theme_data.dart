import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../gen/colors.gen.dart';

final ThemeData themeData = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: ColorName.primary,
    secondary: ColorName.secondary,
    background: ColorName.background,
    surface: ColorName.surface,
    onPrimary: ColorName.onprimary,
    onSurface: ColorName.almostwhite,
    onBackground: ColorName.white,
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: ColorName.secondary,
    selectionColor: ColorName.secondary,
    selectionHandleColor: ColorName.secondary,
  ),
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: ColorName.secondary,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: ColorName.secondary,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: ColorName.secondary,
    ),
    labelSmall: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: ColorName.secondary,
    ),
    labelMedium: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: ColorName.onprimary,
    ),
    labelLarge: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: ColorName.onprimary,
    ),
    bodyLarge: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: ColorName.secondary,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: ColorName.secondary,
    ),
  ),
);

extension DrivingSchoolThemeData on ThemeData {
  static TextStyle? titleStyle;
}

const String mapStyle = '''
[
  {
    "featureType": "administrative",
    "stylers": [
      {
        "color": "#EDE3E4"
      },
      {
        "lightness": 5
      },
      {
        "visibility": "simplified"
      }
    ]
  },
  {
    "featureType": "administrative",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#AF9FA5"
      },
      {
        "weight": 4.5
      }
    ]
  },
  {
    "featureType": "administrative.country",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#ffffff"
      },
      {
        "visibility": "on"
      }
    ]
  },
  {
    "featureType": "landscape",
    "stylers": [
      {
        "color": "#F3F8F2"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi.business",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "road",
    "stylers": [
      {
        "color": "#2B2D42"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "labels.icon",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "stylers": [
      {
        "saturation": -100
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#43be8d"
      },
      {
        "visibility": "on"
      }
    ]
  },
  {
    "featureType": "transit",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
    {
    "featureType": "road",
    "elementType": "labels.text",
    "stylers": [
      {
        "color": "#AF9FA5"
      },
      {
        "visibility": "simplified"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "labels.text",
    "stylers": [
      {
        "color": "#ffffff"
      },
      {
        "visibility": "simplified"
      }
    ]
  }
]''';
