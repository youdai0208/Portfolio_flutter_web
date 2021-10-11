import 'package:flutter/material.dart';
import 'package:flutter_web/settings/routes.dart';
import 'package:flutter_web/settings/strings.dart';
import 'package:routemaster/routemaster.dart';

class CustomAppBar extends StatefulWidget {
  final ScrollController? scrollController;
  final bool isTopPage;
  final Size screenSize;

  const CustomAppBar({Key? key, required this.isTopPage, required this.screenSize, this.scrollController}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  static void loadingStateChange(bool loadingState){
    _CustomAppBarState()._loadingStateChange(loadingState);
  }
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      snap: true,
      floating: true,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(6.0),
        child: Visibility(
          visible: _isLoading,
          child: const LinearProgressIndicator(),
        ),
      ),
      title: TextButton(
        onPressed: () => _pageNavigation(context, RouteManager.homePath),
        child: Text(MajorItems.appBarTitle.toUpperCase()),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => _pageNavigation(context, RouteManager.aboutPath),
          child: Text(MajorItems.about.toUpperCase()),
        ),
        TextButton(
          onPressed: () => _pageNavigation(context, RouteManager.skillPath),
          child: Text(MajorItems.skill.toUpperCase()),
        ),
        TextButton(
          onPressed: () => _pageNavigation(context, RouteManager.productsPath),
          child: Text(MajorItems.products.toUpperCase()),
        ),
      ],
    );
  }

  void _loadingStateChange(bool loadingState) async {
    setState(() {
      _isLoading = loadingState;
    });
  }

  void _pageNavigation(BuildContext context, String nextPagePath){
    if(widget.isTopPage){
      if(Routemaster.of(context).currentRoute.fullPath.toString().contains(RouteManager.homePath)){
        Routemaster.of(context).pop();
        Routemaster.of(context).replace(nextPagePath);
        _scrollAnimation(nextPagePath);
      }else {
        Routemaster.of(context).replace(nextPagePath);
      }
    }else {
      Routemaster.of(context).push(nextPagePath);
    }
  }

  void _scrollAnimation(String position){
    const int animationTime = 750;
    const Curve animationType = Curves.easeOut;
    final double homePosition = (widget.screenSize.height * 0) + const SliverAppBar().toolbarHeight;
    final double aboutPosition = (widget.screenSize.height * 1) + const SliverAppBar().toolbarHeight;
    final double skillPosition = (widget.screenSize.height * 2) + const SliverAppBar().toolbarHeight;
    final double productsPosition = (widget.screenSize.height * 3) + const SliverAppBar().toolbarHeight;

    if (widget.scrollController != null){
      switch(position){
        case RouteManager.homePath:
          widget.scrollController!.animateTo(homePosition, duration: const Duration(milliseconds: animationTime), curve: animationType);
          break;
        case RouteManager.aboutPath:
          widget.scrollController!.animateTo(aboutPosition, duration: const Duration(milliseconds: animationTime), curve: animationType);
          break;
        case RouteManager.skillPath:
          widget.scrollController!.animateTo(skillPosition, duration: const Duration(milliseconds: animationTime), curve: animationType);
          break;
        case RouteManager.productsPath:
          widget.scrollController!.animateTo(productsPosition, duration: const Duration(milliseconds: animationTime), curve: animationType);
          break;
        default:
          // ignore: avoid_print
          print("scroll error");
          break;
      }
    }
  }
}
