import 'package:flutter/material.dart';
import 'package:flutter_web/components/base_page_layout.dart';
import 'package:flutter_web/components/product_box.dart';
import 'package:flutter_web/settings/strings.dart';

class AllProductPage extends StatelessWidget {
  static Size _screenSize = const Size(0,0);
  static List<Widget> _children = <Widget>[];

  const AllProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          _screenSize = Size(constraints.maxWidth, constraints.maxHeight);

          if(_children.isEmpty){
            final double _titleContainerHeight = _screenSize.height;
            final double _gridContainerHeight = _screenSize.height * (5 / 2);

            _children = <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: _titleContainerHeight,
                    color: Theme.of(context).backgroundColor,
                    alignment: Alignment.center,
                    child: Text(MajorItems.allProduct,style: Theme.of(context).textTheme.headline1,),
                  ),
                  Container(
                    height: _gridContainerHeight,
                    color: Theme.of(context).backgroundColor,
                    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
                    child: GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 100,
                      mainAxisSpacing: 100,
                      children: <Widget>[
                        ProductBox(productSummary: AllProductSummary.rlObstacleAvoidanceSummary),
                        ProductBox(productSummary: AllProductSummary.socialDistanceVisualizationSystemSummary),
                        ProductBox(productSummary: AllProductSummary.kosenRobocon2020Summary),
                        ProductBox(productSummary: AllProductSummary.gakuseiRobocon2020AndroidSummary),
                        ProductBox(productSummary: AllProductSummary.gakuseiRobocon2020Summary),
                        ProductBox(productSummary: AllProductSummary.threeWheelOmuniRobotSummary),
                        ProductBox(productSummary: AllProductSummary.kosenRobocon2019Summary),
                        ProductBox(productSummary: AllProductSummary.gakuseiRobocon2019Summary),
                        ProductBox(productSummary: AllProductSummary.kosenRobocon2018Summary),
                        ProductBox(productSummary: AllProductSummary.realTimeVoiceControlVRGameSummary),
                      ],
                    ),
                  ),
                ],
              ),
            ];
          }

          return BasePageLayout(isTopPage: false, screenSize: _screenSize, children: _children);
        }
    );
  }
}
