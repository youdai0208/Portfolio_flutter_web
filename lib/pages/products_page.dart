import 'package:flutter/material.dart';
import 'package:flutter_web/components/box_with_frame.dart';
import 'package:flutter_web/settings/strings.dart';

class ProductsPage extends StatelessWidget {
  final Size screenSize;

  ProductsPage({required this.screenSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      color: Theme.of(context).backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              createProductBox(context: context, imagePath: "images/IMG_myicon.jpg", productTitle: screenSize.height.toString(), onTaped: (){}),
              Container(
                width: 450,
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(products.toUpperCase(),
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    TextButton(
                        onPressed: (){},
                        child: Text(anyMore.toUpperCase(),
                          style: Theme.of(context).textTheme.headline3,
                        ),
                    ),
                  ],
                ),
              ),
              createProductBox(context: context, imagePath: "images/IMG_myicon.jpg", productTitle: "Product Title", onTaped: (){}),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              createProductBox(context: context, imagePath: "images/IMG_myicon.jpg", productTitle: "Product Title", onTaped: (){}),
              createProductBox(context: context, imagePath: "images/IMG_myicon.jpg", productTitle: "Product Title", onTaped: (){}),
              createProductBox(context: context, imagePath: "images/IMG_myicon.jpg", productTitle: "Product Title", onTaped: (){}),
            ],
          ),
        ],
      ),
    );
  }

  Widget createProductBox({required BuildContext context, required String imagePath, required String productTitle, required void Function() onTaped}){
    const double _imageHeight = 250;
    const Size _titleBoxSize = Size(450, 150);

    return GestureDetector(
      onTap: onTaped,
      child: BoxWithFrame(
        childWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(imagePath, height: _imageHeight,),
            Container(
              width: _titleBoxSize.width,
              height: _titleBoxSize.height,
              alignment: Alignment.center,
              child: Text(productTitle,
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