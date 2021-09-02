import 'package:flutter/material.dart';
import 'package:flutter_web/settings/strings.dart';

class SkillPage extends StatelessWidget {
  double get boxRoundedRadius => 30.0;
  EdgeInsetsGeometry get skillListContainerPadding =>
      const EdgeInsets.only(top: 0.0, bottom: 20.0, left: 30.0, right: 45.0);
  final Size screenSize;

  SkillPage({required this.screenSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      color: Theme.of(context).backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            skill.toUpperCase(),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline2,
          ),
          Container(
            width: 900,
            // height: ,
            padding: const EdgeInsets.only(top: 10, bottom: 25, left: 25, right: 25),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 5),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Container(
              // width: 600,
              // height: 250,
              alignment: Alignment.center,
              child: Text(
                levelIntroduction,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                padding: skillListContainerPadding,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 5),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      robotics.toUpperCase(),
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        SizedBox(
                          width: 400,
                          child: Text(
                            roboticsSkill,
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ),
                        Container(
                          width: 100,
                        ),
                        Text(
                          robotSkillLevel,
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: skillListContainerPadding,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 5),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      other.toUpperCase(),
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        SizedBox(
                          width: 400,
                          child: Text(
                            otherSkill,
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ),
                        Container(
                          width: 100,
                        ),
                        Text(
                          otherSkillLevel,
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container createSkillBox(BuildContext context, String classification, Map<String, String> skillMap, double boxRoundedRadius) {
    const String _enter = "\n";
    const String _level = "-Level";
    const EdgeInsetsGeometry _skillListContainerPadding = EdgeInsets.only(top: 0.0, bottom: 20.0, left: 30.0, right: 45.0);
    const double _borderWidth = 5.0;
    const double _skillNameBoxWidth = 400.0;
    const double _skillSpaceBoxWidth = 100.0;

    String _skillNameList = "";
    String _skillLevelList = "";

    skillMap.forEach((key, value) {
      _skillNameList += key + _enter;
      _skillLevelList += _level + value + _enter;
    });

    Column childWidget = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          classification.toUpperCase(),
          style: Theme.of(context).textTheme.headline3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(
              width: _skillNameBoxWidth,
              child: Text(
                _skillNameList,
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Container(
              width: _skillSpaceBoxWidth,
            ),
            Text(
              _skillLevelList,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ],
    );

    return createBoxWithFrame(childWidget, _skillListContainerPadding);
  }

  Container createBoxWithFrame(Widget childWidget, EdgeInsetsGeometry containerPadding) {
    const double _borderWidth = 5.0;
    const double _boxRoundedRadius = 30.0;

    return Container(
      padding: containerPadding,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: _borderWidth),
        borderRadius: BorderRadius.circular(_boxRoundedRadius),
      ),
      child: childWidget,
    );
  }

  // String createSkillNameList(List<String> skill_name_list){
  //   String _resultText = "";
  //   for(String i in skill_name_list){
  //     _resultText += i + "\n";
  //   }
  //   return _resultText;
  // }
}
