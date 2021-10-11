import 'package:flutter/material.dart';

class BoxWithFrame extends StatelessWidget {
  static double get _borderWidth => 5.0;
  static double get _boxRoundedRadius => 30.0;
  final double? width;
  final double? height;
  final Alignment? alignment;
  final Widget childWidget;
  final EdgeInsetsGeometry? containerPadding;
  // final

  const BoxWithFrame({Key? key, required this.childWidget, this.width, this.height, this.alignment, this.containerPadding}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: width,
      height: height,
      alignment: alignment,
      padding: containerPadding,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: _borderWidth),
        borderRadius: BorderRadius.circular(_boxRoundedRadius),
      ),
      child: childWidget,
    );
  }

}