import 'package:flutter/material.dart';
import 'SizeConfig.dart';

TextStyle txtS(Color col, double siz, FontWeight wg) {
  return TextStyle(
    color: col,
    fontWeight: wg,
    fontSize: SizeConfig.screenWidth / 360 * siz,
    letterSpacing: 0.2,
  );
}

SizedBox sh(double h) {
  return SizedBox(height: h * SizeConfig.screenHeight / 640);
}
