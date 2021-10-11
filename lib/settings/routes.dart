import 'package:flutter/material.dart';
import 'package:flutter_web/pages/not_found_page.dart';
import 'package:routemaster/routemaster.dart';
import 'package:flutter_web/settings/strings.dart';
import 'package:flutter_web/pages/all_product_page.dart';
import 'package:flutter_web/pages/product_details_page.dart';
import '../main.dart';

class RouteManager{
  static const String rootPath = "/";
  static const String homePath = "/home";
  static const String aboutPath = "/home#about";
  static const String skillPath = "/home#skill";
  static const String productsPath = "/home#products";
  static const String allProductsPath = "/all_products";
  static const String rlObstacleAvoidancePath = "/all_products/rl_obstacle_avoidance";
  static const String socialDistanceVisualizationSystemPath = "/all_products/social_distance_visualization_system";
  static const String kosenRobocon2020Path = "/all_products/kosen_robocon_2020";
  static const String gakuseiRobocon2020AndroidPath = "/all_products/gakusei_robocon_2020_android";
  static const String gakuseiRobocon2020Path = "/all_products/gakusei_robocon_2020";
  static const String threeWheelOmuniRobotPath = "/all_products/three_wheel_omuni_robot";
  static const String kosenRobocon2019Path = "/all_products/kosen_robocon_2019";
  static const String gakuseiRobocon2019Path = "/all_products/gakusei_robocon_2019";
  static const String kosenRobocon2018Path = "/all_products/kosen_robocon_2018";
  static const String realTimeVoiceControlVRGamePath = "/all_products/real_time_voice_control_vr_game";


  RouteMap _routes = RouteMap(routes: const {});

  RouteManager(){
    _routes = RouteMap(
        routes: {
          rootPath : (_) => const Redirect(homePath),
          homePath : (_) => MaterialPage(child: MyHomePage(position: homePath,),),
          aboutPath : (_) => MaterialPage(child: MyHomePage(position: aboutPath,),),
          skillPath : (_) => MaterialPage(child: MyHomePage(position: skillPath,),),
          productsPath : (_) => MaterialPage(child: MyHomePage(position: productsPath,),),
          allProductsPath : (_) => const MaterialPage(child: AllProductPage(),),
          rlObstacleAvoidancePath : (_) => MaterialPage(child: ProductDetailsPage(productSummary: AllProductSummary.rlObstacleAvoidanceSummary),),
          socialDistanceVisualizationSystemPath : (_) => MaterialPage(child: ProductDetailsPage(productSummary: AllProductSummary.socialDistanceVisualizationSystemSummary),),
          kosenRobocon2020Path : (_) => MaterialPage(child: ProductDetailsPage(productSummary: AllProductSummary.kosenRobocon2020Summary),),
          gakuseiRobocon2020AndroidPath : (_) => MaterialPage(child: ProductDetailsPage(productSummary: AllProductSummary.gakuseiRobocon2020AndroidSummary),),
          gakuseiRobocon2020Path : (_) => MaterialPage(child: ProductDetailsPage(productSummary: AllProductSummary.gakuseiRobocon2020Summary),),
          threeWheelOmuniRobotPath : (_) => MaterialPage(child: ProductDetailsPage(productSummary: AllProductSummary.threeWheelOmuniRobotSummary),),
          kosenRobocon2019Path : (_) => MaterialPage(child: ProductDetailsPage(productSummary: AllProductSummary.kosenRobocon2019Summary),),
          gakuseiRobocon2019Path : (_) => MaterialPage(child: ProductDetailsPage(productSummary: AllProductSummary.gakuseiRobocon2019Summary),),
          kosenRobocon2018Path : (_) => MaterialPage(child: ProductDetailsPage(productSummary: AllProductSummary.kosenRobocon2018Summary),),
          realTimeVoiceControlVRGamePath : (_) => MaterialPage(child: ProductDetailsPage(productSummary: AllProductSummary.realTimeVoiceControlVRGameSummary),),
        },
      onUnknownRoute: (_) => MaterialPage(child: NotFoundPage()),
    );
  }

  RouteMap getRoutes(){
    return _routes;
  }

  // MaterialPage _createProductsDetails(String productName){
  //   MaterialPage result = MaterialPage(child: MyHomePage(position: "/home",),);
  //   switch(productName){
  //     case rlObstacleAvoidancePath:
  //       result = const MaterialPage(
  //         child: ProductDetailsPage(
  //           productName: rlObstacleAvoidanceName,
  //           productPicture: rlObstacleAvoidanceImagePath,
  //           useSkillMap: rlObstacleAvoidanceSkillMap,
  //           productDetails: rlObstacleAvoidanceAbout,
  //         ),
  //       );
  //       break;
  //     case socialDistanceVisualizationSystemPath:
  //       result = const MaterialPage(
  //         child: ProductDetailsPage(
  //           productName: socialDistanceVisualizationSystemName,
  //           productPicture: socialDistanceVisualizationSystemImagePath,
  //           useSkillMap: socialDistanceVisualizationSystemSkillMap,
  //           productDetails: socialDistanceVisualizationSystemAbout,
  //         ),
  //       );
  //       break;
  //     case kosenRobocon2020Path:
  //       result = const MaterialPage(
  //           child: ProductDetailsPage(
  //             productName: kosenRobocon2020Name,
  //             productPicture: kosenRobocon2020ImagePath,
  //             useSkillMap: kosenRobocon2020SkillMap,
  //             productDetails: kosenRobocon2020About,
  //           ),
  //       );
  //       break;
  //     case gakuseiRobocon2020AndroidPath:
  //       result = const MaterialPage(
  //         child: ProductDetailsPage(
  //           productName: gakuseiRobocon2020AndroidName,
  //           productPicture: gakuseiRobocon2020AndroidImagePath,
  //           useSkillMap: gakuseiRobocon2020AndroidSkillMap,
  //           productDetails: gakuseiRobocon2020AndroidAbout,
  //         ),
  //       );
  //       break;
  //     case gakuseiRobocon2020Path:
  //       result = const MaterialPage(
  //         child: ProductDetailsPage(
  //           productName: gakuseiRobocon2020Name,
  //           productPicture: gakuseiRobocon2020ImagePath,
  //           useSkillMap: gakuseiRobocon2020SkillMap,
  //           productDetails: gakuseiRobocon2020About,
  //         ),
  //       );
  //       break;
  //     case threeWheelOmuniRobotPath:
  //       result = const MaterialPage(
  //         child: ProductDetailsPage(
  //           productName: threeWheelOmuniRobotName,
  //           productPicture: threeWheelOmuniRobotImagePath,
  //           useSkillMap: threeWheelOmuniRobotSkillMap,
  //           productDetails: threeWheelOmuniRobotAbout,
  //         ),
  //       );
  //       break;
  //     case kosenRobocon2019Path:
  //       result = const MaterialPage(
  //         child: ProductDetailsPage(
  //           productName: kosenRobocon2019Name,
  //           productPicture: kosenRobocon2019ImagePath,
  //           useSkillMap: kosenRobocon2019SkillMap,
  //           productDetails: kosenRobocon2019About,
  //         ),
  //       );
  //       break;
  //     case gakuseiRobocon2019Path:
  //       result = const MaterialPage(
  //         child: ProductDetailsPage(
  //           productName: gakuseiRobocon2019Name,
  //           productPicture: gakuseiRobocon2019ImagePath,
  //           useSkillMap: gakuseiRobocon2019SkillMap,
  //           productDetails: gakuseiRobocon2019About,
  //         ),
  //       );
  //       break;
  //     case kosenRobocon2018Path:
  //       result = const MaterialPage(
  //         child: ProductDetailsPage(
  //           productName: kosenRobocon2018Name,
  //           productPicture: kosenRobocon2018ImagePath,
  //           useSkillMap: kosenRobocon2018SkillMap,
  //           productDetails: kosenRobocon2018About,
  //         ),
  //       );
  //       break;
  //     case realTimeVoiceControlVRGamePath:
  //       result = const MaterialPage(
  //         child: ProductDetailsPage(
  //           productName: realTimeVoiceControlVRGameName,
  //           productPicture: realTimeVoiceControlVRGameImagePath,
  //           useSkillMap: realTimeVoiceControlVRGameSkillMap,
  //           productDetails: realTimeVoiceControlVRGameAbout,
  //         ),
  //       );
  //       break;
  //     default:
  //       break;
  //   }
  //   return result;
  // }
}

