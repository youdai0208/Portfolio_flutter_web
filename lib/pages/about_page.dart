import 'package:flutter/material.dart';
import '../settings/strings.dart';

class AboutPage extends StatelessWidget {
  final Size screenSize;
  
  AboutPage({required this.screenSize});
  
  @override
  Widget build(BuildContext context) {

    return Container(
      width: screenSize.width,
      height: screenSize.height,
      color: Theme.of(context).backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(about.toUpperCase(),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 600,
                height: 600,
                decoration: BoxDecoration(
                  border: Border.all(color:  Colors.black, width: 5),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25.5),
                  child: Image.asset("images/IMG_myicon.jpg",),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 600,
                height: 600,
                decoration: BoxDecoration(
                  border: Border.all(color:  Colors.black, width: 5),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  height: 500,
                  width: 500,
                  child: Text(selfIntroduction,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
            ],
          )
        ],
      )
    );
  }

}