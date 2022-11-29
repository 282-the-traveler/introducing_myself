import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yugacrew/common/const/colors.dart';
import 'package:yugacrew/common/const/images.dart';

class DefaultLayout extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final String? title;
  final Widget? bottomNavigationBar;
  final bool isBack;
  final double elevation;
  final bool isClose;
  final bool isFloatingActionButton;

  const DefaultLayout({
    Key? key,
    required this.child,
    this.backgroundColor,
    this.title,
    this.bottomNavigationBar,
    this.isBack = false,
    this.elevation = 0.5,
    this.isClose = false,
    this.isFloatingActionButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.white,
      appBar: renderAppBar(),
      body: child,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: isFloatingActionButton
          ? FloatingActionButton(
              onPressed: () {},
              backgroundColor: AppColors.RED,
              child: SvgPicture.asset(
                Images.pencil,
              ),
            )
          : const SizedBox.shrink(),
    );
  }

  // 앱 바
  AppBar? renderAppBar() {
    if (title == null) {
      return null;
    } else {
      return AppBar(
        leading: isBack ? const BackButton() : const SizedBox.shrink(),
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
          isClose ? const CloseButton() : const SizedBox.shrink(),
        ],
      );
    }
  }
}
