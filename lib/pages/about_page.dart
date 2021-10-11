import 'package:flutter/material.dart';
import 'package:flutter_web/components/box_with_frame.dart';
import 'package:flutter_web/settings/strings.dart';

class AboutPage extends StatelessWidget {
  final Size screenSize;
  
  const AboutPage({Key? key, required this.screenSize}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final Size _boxSize = Size(screenSize.height * (2 / 3), screenSize.height * (2 / 3));

    return Container(
      width: screenSize.width,
      height: screenSize.height,
      color: Theme.of(context).backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(MajorItems.about.toUpperCase(),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              BoxWithFrame(
                width: _boxSize.width,
                height: _boxSize.height,
                childWidget: ClipRRect(
                  borderRadius: BorderRadius.circular(25.5),
                  child: Image.asset(Sentences.myImage,),
                ),
              ),
              BoxWithFrame(
                alignment: Alignment.center,
                width: _boxSize.width,
                height: _boxSize.height,
                childWidget: Container(
                  padding: const EdgeInsets.all(50),
                  child: Text(Sentences.selfIntroduction,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}