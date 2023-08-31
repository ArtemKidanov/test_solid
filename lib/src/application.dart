import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_solid/src/colored_text_inherited_widget.dart';
import 'package:test_solid/src/colored_text_widget.dart';

/// Main widget of application
class Application extends StatefulWidget {
  /// Initialize widget
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  static const _defaultColor = 0xFFFFFFFF;

  Color _color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: () {
          setState(() {
            _color = Color((Random().nextDouble() * _defaultColor).toInt())
                .withOpacity(1);
          });
        },
        child: Scaffold(
          appBar: AppBar(title: const Text('Test task')),
          body: ColoredTextInheritedWidget(
            textColor: _color,
            child: const ColoredTextWidget(),
          ),
        ),
      ),
    );
  }
}
