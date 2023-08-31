import 'package:flutter/material.dart';

/// Inherited widget for saving and passing new text color
class ColoredTextInheritedWidget extends InheritedWidget {
  /// Initialize inherited widget with child and text color
  const ColoredTextInheritedWidget({
    required super.child,
    required this.textColor,
    super.key,
  });

  /// Variable to save text color
  final Color textColor;

  /// Method for inherited widget to find it from context
  static ColoredTextInheritedWidget of(BuildContext context) {
    final ColoredTextInheritedWidget? result = context
        .dependOnInheritedWidgetOfExactType<ColoredTextInheritedWidget>();

    if (result == null) {
      throw Exception('No ColorInheritedWidget on this context');
    }

    return result;
  }

  @override
  bool updateShouldNotify(ColoredTextInheritedWidget oldWidget) {
    return textColor != oldWidget.textColor;
  }
}
