import 'package:flutter/material.dart';
import 'package:yugacrew/common/const/colors.dart';
import 'package:yugacrew/common/const/sizes.dart';
import 'package:yugacrew/common/layout/default_layout.dart';

class StrengthScreen extends StatelessWidget {
  final String strengthTitle;
  final String strengthText;

  const StrengthScreen(
      {Key? key, required this.strengthTitle, required this.strengthText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    // 키워드 제목, ㅐpa
    return DefaultLayout(
      isClose: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                color: GREEN,
                height: 210,
                margin: EdgeInsets.only(
                  top: statusBarHeight,
                ),
              ),
              Positioned(
                top: statusBarHeight,
                right: 0.0,
                child: const Align(
                  alignment: Alignment.topRight,
                  child: CloseButton(),
                ),
              ),
              const Positioned(
                bottom: 20.0,
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/portrait.jpeg',
                  ),
                  radius: 64,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 22,
              left: 21,
              bottom: 10,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 7.0,
              vertical: 2.0,
            ),
            decoration: BoxDecoration(
                border: Border.all(
              width: 1,
              color: VIOLET,
            )),
            child: const Text(
              '키워드',
              style: TextStyle(
                color: VIOLET,
                fontSize: SMALL_FONT_SIZE,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 21.0,
            ),
            child: Text(
              strengthTitle,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 21.0,
              vertical: 16.0,
            ),
            child: const Divider(
              color: BLACK,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 21.0,
            ),
            child: Text(
              strengthText,
            ),
          ),
        ],
      ),
    );
  }
}
