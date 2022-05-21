import 'package:flutter/material.dart';

class ColorManager {
  static Color blue = HexColor.fromHex('#0666EB');
  static Color lightBlue = HexColor.fromHex('#E5EFFD');
  static Color lightGrey = HexColor.fromHex('#E1E1E1');
  static Color white = Colors.white;
  static Color black = Colors.black;
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF' + hexColorString;
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
