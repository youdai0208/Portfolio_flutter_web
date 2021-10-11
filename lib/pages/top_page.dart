import 'package:flutter/material.dart';
import 'package:flutter_web/settings/strings.dart';

class TopPage extends StatelessWidget {
  final Size screenSize;

  const TopPage({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: screenSize.width,
      height: screenSize.height,
      color: Theme.of(context).backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(Sentences.topMessage,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(Sentences.myJobSample,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline4,
          )
        ],
      ),
    );
  }
}