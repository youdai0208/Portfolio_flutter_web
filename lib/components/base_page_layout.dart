import 'package:flutter/material.dart';
import 'package:flutter_web/components/custom_app_bar.dart';
import 'package:flutter_web/pages/screen_size_warning_page.dart';
import 'package:flutter_web/settings/routes.dart';

class BasePageLayout extends StatelessWidget {
  final bool isTopPage;
  final List<Widget> children;
  String? position;
  final ScrollController _scrollController = ScrollController();
  final Size screenSize;
  static bool _isLoading = false;

  BasePageLayout({Key? key, required this.isTopPage, required this.screenSize, required this.children, this.position}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // if(MediaQuery.of(context).size.height < 1000 || MediaQuery.of(context).size.width < 1900){
    //   return ScreenSizeWarningPage(screenSize: MediaQuery.of(context).size,);
    // }

    _isLoading = true;
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      if(_isLoading){
        CustomAppBar.loadingStateChange(false);
      }
      if(isTopPage){
        if(position!.isNotEmpty){
          _firstScrollAnimation(position!);
        }
      }
    });

    CustomAppBar.loadingStateChange(true);

    return Scaffold(
          body: CustomScrollView(
            controller: _scrollController,
            slivers: <Widget>[
              CustomAppBar(isTopPage: isTopPage, screenSize: screenSize, scrollController: isTopPage ? _scrollController : null,),
              SliverList(delegate: SliverChildListDelegate(children),
              ),
            ],
          ),
        );
  }

  void _firstScrollAnimation(String position){
    const int animationTime = 750;
    const Curve animationType = Curves.easeOut;
    final double homePosition = (screenSize.height * 0) + const SliverAppBar().toolbarHeight;
    final double aboutPosition = (screenSize.height * 1) + const SliverAppBar().toolbarHeight;
    final double skillPosition = (screenSize.height * 2) + const SliverAppBar().toolbarHeight;
    final double productsPosition = (screenSize.height * 3) + const SliverAppBar().toolbarHeight;

    switch(position){
      case RouteManager.homePath:
        // _scrollController.animateTo(homePosition, duration: const Duration(milliseconds: animationTime), curve: animationType);
        break;
      case RouteManager.aboutPath:
        _scrollController.animateTo(aboutPosition, duration: const Duration(milliseconds: animationTime), curve: animationType);
        break;
      case RouteManager.skillPath:
        _scrollController.animateTo(skillPosition, duration: const Duration(milliseconds: animationTime), curve: animationType);
        break;
      case RouteManager.productsPath:
        _scrollController.animateTo(productsPosition, duration: const Duration(milliseconds: animationTime), curve: animationType);
        break;
      default:
        // ignore: avoid_print
        print("scroll error");
        break;
    }
  }
}
