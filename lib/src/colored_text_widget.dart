import 'package:flutter/material.dart';
import 'package:test_solid/src/colored_text_inherited_widget.dart';

/// The text widget which displays text in random color
class ColoredTextWidget extends StatelessWidget {
  /// Initialize widget
  const ColoredTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello there',
        style: TextStyle(
          color: ColoredTextInheritedWidget.of(context).textColor,
        ),
      ),
    );
  }
}
