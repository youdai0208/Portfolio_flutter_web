import 'package:flutter/material.dart';
import 'package:flutter_web/settings/strings.dart';

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size _screenSize = MediaQuery.of(context).size;
    return Container(
      height: _screenSize.height,
      width: _screenSize.width,
      alignment: Alignment.center,
      color: Theme.of(context).backgroundColor,
      child: Text(Sentences.notFound, style: Theme.of(context).textTheme.headline2,),
    );
  }
}
