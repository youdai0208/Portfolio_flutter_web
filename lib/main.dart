import 'package:flutter/material.dart';
import 'package:flutter_web/pages/about_page.dart';
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
      debugShowCheckedModeBanner: false,
      title: siteTitle,
      theme: createThemeData(),
      home: MyHomePage(title: appBarTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    final Size screen_size = MediaQuery.of(context).size;

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            snap: true,
            floating: true,
            title: Text(title),
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
            delegate: SliverChildListDelegate(<Widget>[
              TopPage(backColor: Color(myWhite), screenSize: screen_size,),
              AboutPage(screenSize: screen_size),
              TopPage(backColor: Colors.blue, screenSize: screen_size,),
              TopPage(backColor: Colors.teal, screenSize: screen_size,),
            ]),
          ),
        ],
      ),
    );
  }

}


