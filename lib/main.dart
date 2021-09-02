import 'package:flutter/material.dart';
import 'package:flutter_web/pages/about_page.dart';
import 'package:flutter_web/pages/all_product_page.dart';
import 'package:flutter_web/pages/products_page.dart';
import 'package:flutter_web/pages/skill_page.dart';
import 'settings/strings.dart';
import 'settings/theme.dart';
import 'pages/top_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: siteTitle,
      theme: createThemeData(),
      // home: MyHomePage(title: appBarTitle),
      home: AllProductPage(),
    );
  }
}

// class MyHomePage1 extends StatelessWidget {
//   final String title;
//   ScrollController _scrollController = new ScrollController();
//
//   MyHomePage1({required this.title});
//
//   @override
//   Widget build(BuildContext context) {
//     final Size screen_size = MediaQuery.of(context).size;
//
//     return Scaffold(
//       body: CustomScrollView(
//         controller: _scrollController,
//         slivers: <Widget>[
//           SliverAppBar(
//             pinned: false,
//             snap: true,
//             floating: true,
//             title: Text(title),
//             actions: <Widget>[
//               TextButton(
//                 onPressed: () {},
//                 child: Text(about.toUpperCase()),
//               ),
//               TextButton(
//                 onPressed: () {},
//                 child: Text(skill.toUpperCase()),
//               ),
//               TextButton(
//                 onPressed: () {},
//                 child: Text(products.toUpperCase()),
//               ),
//             ],
//           ),
//           SliverList(
//             delegate: SliverChildListDelegate(<Widget>[
//               TopPage(backColor: Color(myWhite), screenSize: screen_size,),
//               AboutPage(screenSize: screen_size),
//               SkillPage(screenSize: screen_size),
//               ProductsPage(screenSize: screen_size),
//             ]),
//           ),
//         ],
//       ),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({required this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    final Size screen_size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            snap: true,
            floating: true,
            title: homePageTextButton(
                scrollController: _scrollController,
                widgetPosition: screen_size.height * 0,
                text: widget.title
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  _scrollController.animateTo(
                      screen_size.height * 1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                  );
                },
                child: Text(about.toUpperCase()),
              ),
              TextButton(
                onPressed: () {
                  _scrollController.animateTo(
                    screen_size.height * 2,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeOut,
                  );
                },
                child: Text(skill.toUpperCase()),
              ),
              TextButton(
                onPressed: () {
                  _scrollController.animateTo(
                    screen_size.height * 3,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeOut,
                  );
                },
                child: Text(products.toUpperCase()),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
                <Widget>[
                  TopPage(backColor: Color(myWhite), screenSize: screen_size,),
                  AboutPage(screenSize: screen_size),
                  SkillPage(screenSize: screen_size),
                  ProductsPage(screenSize: screen_size),
                ]
            ),
          ),
        ],
      ),
    );
  }

  Widget homePageTextButton({required ScrollController scrollController, required double widgetPosition, required String text,
    int? animationTime, Curve? curve}){
    int _animationTime = 500;
    Curve _curve = Curves.easeOut;

    if(animationTime != null) {
      _animationTime = animationTime;
    }

    if(curve != null) {
      _curve = curve;
    }

    return TextButton(
      onPressed: () {
        scrollController.animateTo(
          widgetPosition,
          duration: Duration(milliseconds: _animationTime),
          curve: _curve,
        );
      },
      child: Text(text,),
    );
  }
}



