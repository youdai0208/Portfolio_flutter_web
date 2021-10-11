import 'package:flutter/material.dart';
import 'package:flutter_web/components/box_with_frame.dart';
import 'package:flutter_web/components/product_summary.dart';
import 'package:flutter_web/settings/routes.dart';
import 'package:routemaster/routemaster.dart';

class ProductBox extends StatelessWidget {
  final ProductSummary productSummary;

  const ProductBox({Key? key, required this.productSummary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double _imageHeight = 250;
    const Size _titleBoxSize = Size(450, 150);

    return GestureDetector(
      onTap: (){
        Routemaster.of(context).push(productSummary.path);
      },
      child: BoxWithFrame(
        childWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(productSummary.imagePath, height: _imageHeight,),
            Container(
              width: _titleBoxSize.width,
              height: _titleBoxSize.height,
              alignment: Alignment.center,
              child: Text(productSummary.getTitle(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
