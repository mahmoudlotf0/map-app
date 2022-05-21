import 'package:flutter/material.dart';
import 'package:mapapp/presentation/resources/font_manager.dart';

TextStyle regularTextStyle({
  required Color color,
  double fontSize = FontSize.s12,
  double letterSpacing = 0,
}) {
  return TextStyle(
    color: color,
    fontSize: fontSize,
    letterSpacing: letterSpacing,
  );
}

TextStyle boldTextStyle(
    {required Color color, double fontSize = FontSize.s12}) {
  return TextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: FontWeightManager.bold,
  );
}
