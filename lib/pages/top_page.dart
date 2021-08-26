import 'package:flutter/material.dart';
import '../settings/strings.dart';

class TopPage extends StatelessWidget {
  final Color backColor;
  final Size screenSize;

  TopPage({this.backColor = Colors.white, required this.screenSize});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: screenSize.width,
      height: screenSize.height,
      color: backColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(topMessage,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(myJobSample,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline4,
          )
        ],
      ),
    );
  }

}