import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DefaultLayout extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final String? title;
  final Widget? bottomNavigationBar;
  final bool isBack;
  final double elevation;
  final bool isClose;

  const DefaultLayout({
    Key? key,
    required this.child,
    this.backgroundColor,
    this.title,
    this.bottomNavigationBar,
    this.isBack = false,
    this.elevation = 0.5,
    this.isClose = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.white,
      appBar: renderAppBar(),
      body: child,
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  AppBar? renderAppBar() {
    if (title == null) {
      return null;
    } else {
      return AppBar(
        leading: isBack
            ? BackButton()
            : const SizedBox.shrink(),
        backgroundColor: Colors.white,
        elevation: elevation,
        title: title!.startsWith('assets')
            ? SvgPicture.asset(
                title!,
              )
            : Text(
                title!,
              ),
        centerTitle: true,
        foregroundColor: Colors.black,
        actions: [
          isClose
              ? const CloseButton()
              : const SizedBox.shrink()
        ],
      );
    }
  }
}
