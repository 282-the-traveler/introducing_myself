import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yugacrew/common/const/messages.dart';
import 'package:yugacrew/common/const/sizes.dart';
import 'package:yugacrew/common/layout/default_layout.dart';

class MotivationScreen extends StatelessWidget {
  final bool isBack;

  const MotivationScreen({
    Key? key,
    required this.isBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String big_motivation = 'assets/images/big_motivation.svg';
    return DefaultLayout(
      title: '지원동기',
      isBack: isBack,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 105, vertical: 80.7),
          child: Column(
            children: [
              SvgPicture.asset(
                big_motivation,
                height: 120,
                width: 150,
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 10,
                ),
                child: Text(
                  MOTIVATION_TITLE,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: XX_LARGE_FONT_SIZE,
                  ),
                ),
              ),
              const Text(
                MOTIVATION_TEXT,
                style: TextStyle(
                  fontSize: LARGE_FONT_SIZE,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}