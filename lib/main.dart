import 'package:flutter/material.dart';
import 'package:flutter_web/components/base_page_layout.dart';
import 'package:flutter_web/pages/about_page.dart';
import 'package:flutter_web/pages/products_page.dart';
import 'package:flutter_web/pages/skill_page.dart';
import 'package:flutter_web/settings/routes.dart';
import 'package:routemaster/routemaster.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'settings/strings.dart';
import 'settings/theme.dart';
import 'pages/top_page.dart';

void main() {
  Routemaster.setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Locale _locale = Locale("ja", "JP");
    return MaterialApp.router(
      // debugShowCheckedModeBanner: false,
      title: MajorItems.siteTitle,
      theme: createThemeData(),
      locale: _locale,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        _locale,
      ],
      routerDelegate: RoutemasterDelegate(routesBuilder: (_) => RouteManager().getRoutes()),
      routeInformationParser: RoutemasterParser(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  String? position;
  static Size _screenSize = const Size(0,0);
  List<Widget> _children = <Widget>[];

  MyHomePage({Key? key, this.position}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (context, constraints){
        _screenSize = Size(constraints.maxWidth, constraints.maxHeight);

        _children = <Widget>[
          TopPage(screenSize: _screenSize,),
          AboutPage(screenSize: _screenSize),
          SkillPage(screenSize: _screenSize),
          ProductsPage(screenSize: _screenSize),
        ];

        return BasePageLayout(isTopPage: true, position: position, screenSize: _screenSize, children: _children);
      },
    );
  }
}