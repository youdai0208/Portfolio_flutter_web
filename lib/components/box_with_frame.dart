import 'package:flutter/material.dart';

class BoxWithFrame extends StatelessWidget {
  static double get _borderWidth => 5.0;
  static double get _boxRoundedRadius => 30.0;
  // final double width;
  // final double height;
  // final Alignment alignment;
  final Widget childWidget;
  final EdgeInsetsGeometry? containerPadding;
  // final

  BoxWithFrame({required this.childWidget, this.containerPadding});

  @override
  Widget build(BuildContext context) {
    // containerPadding ??= const EdgeInsets.all(0.0);

    return Container(
      padding: containerPadding,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: _borderWidth),
        borderRadius: BorderRadius.circular(_boxRoundedRadius),
      ),
      child: childWidget,
    );
  }

}