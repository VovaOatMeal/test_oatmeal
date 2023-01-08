import 'dart:math';

import 'package:flutter/material.dart';

/// Class for generating random colors.
class ColorGenerator {
  int _redDynamic;
  int _greenDynamic;
  int _blueDynamic;
  final _maxRandomValue = 256; // since RGB value can be 0..255
  final _random = Random();
  static const _defaultColorValue = 250;

  /// Current color of the generator. Provides init color if no generation was
  /// executed.
  Color currentColor;

  /// Creates a color generator with access to the current color. On init
  /// provides the default color with optional passed RGB values.
  ColorGenerator({
    int r = _defaultColorValue,
    int g = _defaultColorValue,
    int b = _defaultColorValue,
  })  : _redDynamic = r,
        _greenDynamic = g,
        _blueDynamic = b,
        currentColor = Color.fromRGBO(r, g, b, 1.0);

  /// Algorithm for generating random RGB values.
  void generateColor() {
    _redDynamic = _random.nextInt(_maxRandomValue);
    _greenDynamic = _random.nextInt(_maxRandomValue);
    _blueDynamic = _random.nextInt(_maxRandomValue);
    currentColor =
        Color.fromRGBO(_redDynamic, _greenDynamic, _blueDynamic, 1.0);
  }
}
