import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTextStyles extends TextStyle {
  const LightTextStyles({
    required Color color,
    required double height,
    required double fontSize,
    String? fontFamily,
    double? letterSpacing,
    TextDecoration? decoration,
    FontWeight fontWeight = FontWeight.w400,
    TextDecorationStyle decorationStyle = TextDecorationStyle.solid,
  }) : super(
          color: color,
          height: height,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: fontFamily,
          decoration: decoration,
          letterSpacing: letterSpacing,
          decorationStyle: decorationStyle,
          decorationColor: Colors.black26,
          leadingDistribution: TextLeadingDistribution.even,
        );

  factory LightTextStyles.roboto({
    required double fontSize,
    required Color color,
    double height = 1.0,
    FontWeight fontWeight = FontWeight.w400,
    double? letterSpacing,
    TextDecoration? decoration,
  }) {
    return LightTextStyles(
      color: color,
      height: height,
      fontSize: fontSize,
      decoration: decoration,
      fontWeight: fontWeight,
      fontFamily: GoogleFonts.roboto().fontFamily,
      letterSpacing: letterSpacing,
    );
  }

  factory LightTextStyles.robotoS16W400({
    required Color color,
    double height = 1.0,
    double? letterSpacing,
    TextDecoration? decoration,
  }) {
    return LightTextStyles(
      color: color,
      height: height,
      fontSize: 16.0,
      decoration: decoration,
      fontFamily: GoogleFonts.roboto().fontFamily,
      letterSpacing: letterSpacing,
    );
  }

  factory LightTextStyles.nunito({
    required double fontSize,
    required Color color,
    double height = 1.0,
    FontWeight fontWeight = FontWeight.w400,
    TextDecorationStyle decorationStyle = TextDecorationStyle.solid,
    double? letterSpacing,
    TextDecoration? decoration,
  }) {
    return LightTextStyles(
      color: color,
      height: height,
      fontSize: fontSize,
      decoration: decoration,
      fontWeight: fontWeight,
      fontFamily: GoogleFonts.nunito().fontFamily,
      letterSpacing: letterSpacing,
      decorationStyle: decorationStyle,
    );
  }

  factory LightTextStyles.arimo({
    required double fontSize,
    required Color color,
    double height = 1.0,
    FontWeight fontWeight = FontWeight.w400,
    TextDecorationStyle decorationStyle = TextDecorationStyle.solid,
    double? letterSpacing,
    TextDecoration? decoration,
  }) {
    return LightTextStyles(
      color: color,
      height: height,
      fontSize: fontSize,
      decoration: decoration,
      fontWeight: fontWeight,
      fontFamily: GoogleFonts.arimo().fontFamily,
      letterSpacing: letterSpacing,
      decorationStyle: decorationStyle,
    );
  }

  factory LightTextStyles.raleway({
    required double fontSize,
    required Color color,
    double height = 1.0,
    FontWeight fontWeight = FontWeight.w400,
    TextDecorationStyle decorationStyle = TextDecorationStyle.solid,
    double? letterSpacing,
    TextDecoration? decoration,
  }) {
    return LightTextStyles(
      color: color,
      height: height,
      fontSize: fontSize,
      decoration: decoration,
      fontWeight: fontWeight,
      fontFamily: GoogleFonts.raleway().fontFamily,
      letterSpacing: letterSpacing,
      decorationStyle: decorationStyle,
    );
  }

  factory LightTextStyles.arimoS18W700({
    required Color color,
    double letterSpacing = 0.5,
    double height = 1.0,
  }) {
    return LightTextStyles.arimo(
      fontSize: 18.0,
      color: color,
      fontWeight: FontWeight.w700,
      letterSpacing: letterSpacing,
      height: height,
    );
  }

  factory LightTextStyles.nunitoS12W700({
    required Color color,
    double letterSpacing = 0.5,
    double height = 1.0,
  }) {
    return LightTextStyles.nunito(
      fontSize: 12.0,
      color: color,
      fontWeight: FontWeight.w700,
      letterSpacing: letterSpacing,
      height: height,
    );
  }
  factory LightTextStyles.nunitoS14W700({
    required Color color,
    double letterSpacing = 0.5,
    double height = 1.0,
  }) {
    return LightTextStyles.nunito(
      fontSize: 14.0,
      color: color,
      fontWeight: FontWeight.w700,
      letterSpacing: letterSpacing,
      height: height,
    );
  }

  factory LightTextStyles.nunitoS12W400Lsp0({
    required Color color,
    double height = 1.0,
  }) {
    return LightTextStyles.nunito(
      fontSize: 12.0,
      color: color,
      letterSpacing: 0.0,
      height: height,
    );
  }

  factory LightTextStyles.nunitoW700({
    required Color color,
    required double fontSize,
    double letterSpacing = 0.5,
    double height = 1.0,
  }) {
    return LightTextStyles.nunito(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.w700,
      letterSpacing: letterSpacing,
      height: height,
    );
  }
  factory LightTextStyles.nunitoW400({
    required Color color,
    required double fontSize,
    double letterSpacing = 0.5,
    double height = 1.0,
  }) {
    return LightTextStyles.nunito(
      fontSize: fontSize,
      color: color,
      letterSpacing: letterSpacing,
      height: height,
    );
  }

  factory LightTextStyles.nunitoS14W400({
    required Color color,
    double letterSpacing = 0.5,
    double height = 1.0,
  }) {
    return LightTextStyles.nunito(
      fontSize: 14.0,
      color: color,
      letterSpacing: letterSpacing,
      height: height,
    );
  }
  factory LightTextStyles.nunitoS20W400({
    required Color color,
    double letterSpacing = 0.5,
    double height = 1.0,
  }) {
    return LightTextStyles.nunito(
      fontSize: 20.0,
      color: color,
      letterSpacing: letterSpacing,
      height: height,
    );
  }

  factory LightTextStyles.robotoS14W400Undrl({
    required Color color,
    double letterSpacing = 0.5,
    double height = 1.0,
  }) {
    return LightTextStyles.roboto(
      fontSize: 14.0,
      color: color,
      letterSpacing: letterSpacing,
      height: height,
      decoration: TextDecoration.underline,
    );
  }

  factory LightTextStyles.nunitoS12W400({
    required Color color,
    double letterSpacing = 0.5,
    double height = 1.0,
  }) {
    return LightTextStyles.nunito(
      fontSize: 12.0,
      color: color,
      letterSpacing: letterSpacing,
      height: height,
    );
  }

  factory LightTextStyles.nunitoS12W400Undrl({
    required Color color,
    double letterSpacing = 0.5,
    double height = 1.0,
  }) {
    return LightTextStyles.nunito(
      fontSize: 12.0,
      color: color,
      letterSpacing: letterSpacing,
      height: height,
      decoration: TextDecoration.underline,
    );
  }

  factory LightTextStyles.nunitoS16W400({
    Color color = Colors.black,
    double height = 1.0,
    double letterSpacing = 0.0,
  }) {
    return LightTextStyles.nunito(
      fontSize: 16.0,
      color: color,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  factory LightTextStyles.nunitoS15W500Lsp02({
    Color color = Colors.black,
    double height = 1.0,
  }) {
    return LightTextStyles.nunito(
      fontSize: 15.0,
      color: color,
      height: height,
      letterSpacing: 0.2,
      fontWeight: FontWeight.w500,
    );
  }

  factory LightTextStyles.nunitoS18W500({
    Color color = Colors.white,
    double height = 1.0,
    double letterSpacing = 0.0,
  }) {
    return LightTextStyles.nunito(
      fontSize: 18.0,
      color: color,
      height: height,
      letterSpacing: letterSpacing,
    );
  }
}
