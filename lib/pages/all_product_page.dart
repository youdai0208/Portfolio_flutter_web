import 'package:flutter/material.dart';
import 'package:flutter_web/components/box_with_frame.dart';
import 'package:flutter_web/pages/products_page.dart';
import 'package:flutter_web/settings/strings.dart';

class AllProductPage extends StatefulWidget {
  @override
  _AllProductPageState createState() => _AllProductPageState();
}

class _AllProductPageState extends State<AllProductPage> {

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            snap: true,
            floating: true,
            title: TextButton(
                onPressed: (){},
                child: const Text(appBarTitle),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {},
                child: Text(about.toUpperCase()),
              ),
              TextButton(
                onPressed: () {},
                child: Text(skill.toUpperCase()),
              ),
              TextButton(
                onPressed: () {},
                child: Text(products.toUpperCase()),
              ),
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate(
                  <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: screenSize.height,
                          color: Theme.of(context).backgroundColor,
                          alignment: Alignment.center,
                          child: Text("All Product",style: Theme.of(context).textTheme.headline1,),
                        ),
                        Container(
                          height: screenSize.height * (5 / 2),
                          color: Theme.of(context).backgroundColor,
                          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 50),
                          child: GridView.count(
                            crossAxisCount: 3,
                            crossAxisSpacing: 100,
                            mainAxisSpacing: 100,
                            children: <Widget>[
                              ProductsPage(screenSize: screenSize,).createProductBox(context: context, imagePath: "images/IMG_myicon.jpg", productTitle: "強化学習を用いた単眼\nカメラ障害物回避システム", onTaped: (){}),
                              ProductsPage(screenSize: screenSize,).createProductBox(context: context, imagePath: "images/IMG_myicon.jpg", productTitle: "ソーシャルディスタンス\n可視化システムの構築", onTaped: (){}),
                              ProductsPage(screenSize: screenSize,).createProductBox(context: context, imagePath: "images/IMG_myicon.jpg", productTitle: "2020高専ロボコン", onTaped: (){}),
                              ProductsPage(screenSize: screenSize,).createProductBox(context: context, imagePath: "images/IMG_myicon.jpg", productTitle: "2020学生ロボコンの\nコンソールアプリの製作", onTaped: (){}),
                              ProductsPage(screenSize: screenSize,).createProductBox(context: context, imagePath: "images/IMG_myicon.jpg", productTitle: "2020学生ロボコン", onTaped: (){}),
                              ProductsPage(screenSize: screenSize,).createProductBox(context: context, imagePath: "images/IMG_myicon.jpg", productTitle: "ROSを使った3輪オムニ\nホイールロボットの製作", onTaped: (){}),
                              ProductsPage(screenSize: screenSize,).createProductBox(context: context, imagePath: "images/IMG_myicon.jpg", productTitle: "2019高専ロボコン", onTaped: (){}),
                              ProductsPage(screenSize: screenSize,).createProductBox(context: context, imagePath: "images/IMG_myicon.jpg", productTitle: "2019学生ロボコン", onTaped: (){}),
                              ProductsPage(screenSize: screenSize,).createProductBox(context: context, imagePath: "images/IMG_myicon.jpg", productTitle: "2018高専ロボコン", onTaped: (){}),
                              ProductsPage(screenSize: screenSize,).createProductBox(context: context, imagePath: "images/IMG_myicon.jpg", productTitle: "リアルタイムVRゲーム開発", onTaped: (){}),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]
              ),
          ),
        ],
      ),
    );
  }
}
