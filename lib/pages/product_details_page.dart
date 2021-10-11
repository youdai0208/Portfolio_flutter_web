import 'package:flutter/material.dart';
import 'package:flutter_web/components/base_page_layout.dart';
import 'package:flutter_web/components/box_with_frame.dart';
import 'package:flutter_web/components/product_summary.dart';
import 'package:flutter_web/settings/strings.dart';

class ProductDetailsPage extends StatelessWidget {
  final ProductSummary productSummary;
  static Size _screenSize = const Size(0,0);
  static List<Widget> _children = <Widget>[];

  const ProductDetailsPage({Key? key, required this.productSummary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;

    final Size _skillMiniContainerSize = Size(_screenSize.width * (100 / 1920), _screenSize.height * ((1 / 5) * (1 / 3)));

    List<Widget> _stockWidget = <Widget>[];

    productSummary.skill.forEach((key, value) {
      _stockWidget.add(
        Column(
          children: <Widget>[
            SizedBox(
              width: _skillMiniContainerSize.width,
              height: _skillMiniContainerSize.height,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.5),
                child: Image.asset(value,),
              ),
            ),
            Text(key, style: Theme.of(context).textTheme.headline5,),
          ],
        ),
      );
    });

    return LayoutBuilder(
        builder: (context, constraints){
          _screenSize = Size(constraints.maxWidth, constraints.maxHeight);

          final Size _baseContainerSize = Size(_screenSize.width, _screenSize.height);
          final Size _skillContainerSize = Size(_screenSize.width * (1 / 2), _screenSize.height * (1 / 5));
          final Size _detailsContainerSize = Size(_screenSize.width * (4 / 5), _screenSize.height * (3 / 5));

          _children = <Widget>[
            Container(
              width: _baseContainerSize.width,
              height: _baseContainerSize.height,
              color: Theme.of(context).backgroundColor,
              child: Image.asset(productSummary.imagePath, height: _screenSize.height,),
            ),
            Container(
              width: _baseContainerSize.width,
              height: _baseContainerSize.height,
              color: Theme.of(context).backgroundColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(MajorItems.details, style: Theme.of(context).textTheme.headline2,),
                  Text(productSummary.name, style: Theme.of(context).textTheme.headline3,),
                  SizedBox(
                    width: _skillContainerSize.width,
                    height: _skillContainerSize.height,
                    child: BoxWithFrame(
                      childWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(MajorItems.useSkill, style: Theme.of(context).textTheme.headline4,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: _stockWidget,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: _detailsContainerSize.width,
                    height: _detailsContainerSize.height,
                    child: BoxWithFrame(
                      containerPadding: const EdgeInsets.only(left: 50.0, right: 30.0, bottom: 10.0, top: 30.0),
                      childWidget: Text(productSummary.about, style: Theme.of(context).textTheme.headline4,),
                    ),
                  ),
                ],
              ),
            ),
          ];

          return BasePageLayout(isTopPage: false, screenSize: _screenSize, children: _children);
        }
      );
  }
}