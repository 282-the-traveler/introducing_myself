import 'package:flutter/material.dart';
import 'package:yugacrew/common/const/colors.dart';
import 'package:yugacrew/common/const/messages.dart';
import 'package:yugacrew/common/const/sizes.dart';
import 'package:yugacrew/common/layout/default_layout.dart';

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 20,
      ),
      width: MediaQuery.of(context).size.width,
      color: AppColors.YELLOW,
      child: Column(
        children: [
          const Text(
            '저를 소개합니다 :)',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: Sizes.XX_LARGE_FONT_SIZE,
            ),
          ),
          const Text(
            '개발팀! 나를 발견하다니 행운이다',
            style: TextStyle(
              fontSize: Sizes.LARGE_FONT_SIZE,
            ),
          ),
          // 사진
          const Padding(
            padding: EdgeInsets.all(
              14.0,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/portrait.jpeg',
              ),
              radius: 30,
            ),
          ),
          const Text(
            '박재경',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: Sizes.LARGE_FONT_SIZE,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 2.0,
            ),
            child: Text(
              '90년생 · 플러터 개발자',
              style: TextStyle(
                fontSize: Sizes.SMALL_FONT_SIZE,
                color: AppColors.GRAY,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return const DefaultLayout(
                    title: '',
                    elevation: 0,
                    isClose: true,
                    child: Padding(
                      padding: EdgeInsets.all(
                        14.0,
                      ),
                      child: SingleChildScrollView(
                        child: Text(
                          Messages.INTRODUCTION_TEXT,
                          style: TextStyle(
                            fontSize: Sizes.LARGE_FONT_SIZE,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            child: Container(
              margin: const EdgeInsets.only(
                top: 14.0,
              ),
              width: 120,
              height: 36,
              alignment: Alignment.center,
              color: AppColors.BLACK,
              child: const Text(
                '소개글 읽기',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: Sizes.SMALL_FONT_SIZE,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
