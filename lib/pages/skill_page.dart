import 'package:flutter/material.dart';
import 'package:flutter_web/components/box_with_frame.dart';
import 'package:flutter_web/settings/strings.dart';

class SkillPage extends StatelessWidget {
  final Size screenSize;

  const SkillPage({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _boxSize = Size(screenSize.width * (3 / 7), screenSize.height * (3 / 4));
    final Matrix4 _roboticsSkillGridTransform = Matrix4.translationValues(-25.0, 0.0, 0.0);
    final Matrix4 _otherSkillGridTransform = Matrix4.translationValues(20.0, 0.0, 0.0);

    return Container(
      width: screenSize.width,
      height: screenSize.height,
      color: Theme.of(context).backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            MajorItems.skill.toUpperCase(),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: _boxSize.width,
                height: _boxSize.height,
                child: BoxWithFrame(
                  childWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        MajorItems.robotics.toUpperCase(),
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Container(
                        transform: _roboticsSkillGridTransform,
                        child: createSkillSlot(context, SkillMaps.roboticsSkillMap),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: _boxSize.width,
                height: _boxSize.height,
                child: BoxWithFrame(
                  childWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        MajorItems.other.toUpperCase(),
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Container(
                        transform: _otherSkillGridTransform,
                        child: createSkillSlot(context, SkillMaps.otherSkillMap),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  
  Widget createSkillSlot(BuildContext context, Map<String, String> skillSlotMap){
    final double _baseContainerHeight = screenSize.height * (1 / 4);
    final double _imageHeight = screenSize.height * (1 / 6);
    List<Widget> skillSlotList = [];

    skillSlotMap.forEach((key, value) {
      skillSlotList.add(
        Container(
          height: _baseContainerHeight,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(value, height: _imageHeight,),
              Text(key, style: Theme.of(context).textTheme.headline4,),
            ],
          ),
        ),
      );
    });

    return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          itemCount: skillSlotList.length,
          itemBuilder: (BuildContext context, int index) {
            return skillSlotList.elementAt(index);
          }
      );
  }
}
