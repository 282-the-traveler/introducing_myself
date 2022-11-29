import 'package:flutter/material.dart';
import 'package:yugacrew/common/const/colors.dart';
import 'package:yugacrew/common/const/messages.dart';
import 'package:yugacrew/common/const/sizes.dart';
import 'package:yugacrew/common/layout/default_layout.dart';

class CareerScreen extends StatelessWidget {
  final bool isBack;

  const CareerScreen({
    Key? key,
    required this.isBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 경력 제목 리스트
    final List<String> careerTitleList = [
      Messages.CAREER_TITLE1,
      Messages.CAREER_TITLE2,
    ];
    // 경력 내용 리스트
    final List<String> careerTextList = [
      Messages.CAREER_TEXT1,
      Messages.CAREER_TEXT2,
    ];
    return DefaultLayout(
      title: '경력기술서',
      isBack: isBack,
      child: Padding(
        padding: const EdgeInsets.all(
          14.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '경력기술서',
            ),
            const Divider(
              thickness: 1.0,
              color: AppColors.LIGHT_GRAY,
            ),
            // 경력 내용
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 14.0,
                      ),
                      Text(
                        careerTitleList[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Sizes.X_LARGE_FONT_SIZE,
                        ),
                      ),
                      const SizedBox(
                        height: 14.0,
                      ),
                      Text(
                        careerTextList[index],
                        style: const TextStyle(
                          fontSize: Sizes.MEDIUM_FONT_SIZE,
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
