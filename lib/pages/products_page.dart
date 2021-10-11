import 'package:flutter/material.dart';
import 'package:flutter_web/components/product_box.dart';
import 'package:flutter_web/settings/routes.dart';
import 'package:flutter_web/settings/strings.dart';
import 'package:routemaster/routemaster.dart';

class ProductsPage extends StatelessWidget {
  static const Size _productBoxSize = Size(450, 400);
  final Size screenSize;

  const ProductsPage({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _baseContainerSize = Size(screenSize.width, screenSize.height * ( 4 / 3 ));

    return Container(
      width: _baseContainerSize.width,
      height: _baseContainerSize.height,
      color: Theme.of(context).backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 100,
        mainAxisSpacing: 100,
        children: <Widget>[
          ProductBox(productSummary: AllProductSummary.rlObstacleAvoidanceSummary),
          Container(
            width: _productBoxSize.width,
            height: _productBoxSize.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(MajorItems.products.toUpperCase(),
                  style: Theme.of(context).textTheme.headline2,
                ),
                TextButton(
                  onPressed: (){
                      Routemaster.of(context).push(RouteManager.allProductsPath);
                    },
                  child: Text(MajorItems.anyMore.toUpperCase(),
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
              ],
            ),
          ),
          ProductBox(productSummary: AllProductSummary.socialDistanceVisualizationSystemSummary),
          ProductBox(productSummary: AllProductSummary.kosenRobocon2020Summary),
          ProductBox(productSummary: AllProductSummary.gakuseiRobocon2020AndroidSummary),
          ProductBox(productSummary: AllProductSummary.gakuseiRobocon2020Summary),
        ],
      ),
    );
  }
}