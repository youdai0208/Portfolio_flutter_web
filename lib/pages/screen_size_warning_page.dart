import 'package:flutter/material.dart';
import 'package:flutter_web/settings/strings.dart';

class ScreenSizeWarningPage extends StatelessWidget {
  final Size screenSize;

  const ScreenSizeWarningPage({Key? key, required this.screenSize}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize.height,
      width: screenSize.width,
      alignment: Alignment.center,
      color: Theme.of(context).backgroundColor,
      child: Text(Sentences.screenSizeWarning, style: Theme.of(context).textTheme.headline2,),
    );
  }
}
