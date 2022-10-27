import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yugacrew/common/const/colors.dart';
import 'package:yugacrew/common/const/messages.dart';
import 'package:yugacrew/common/const/sizes.dart';
import 'package:yugacrew/strength/screens/strength_screen.dart';

class StrengthWidget extends StatelessWidget {
  final int index;

  const StrengthWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String down = 'assets/images/expand_circle_down.svg';
    // 키워드 제목 리스트
    final List<String> strengthTitleList = [
      STRENGTH_TITLE1,
      STRENGTH_TITLE2,
      STRENGTH_TITLE3,
    ];
    // 키워드 내용 리스트
    final List<String> strengthTextList = [
      STRENGTH_TEXT1,
      STRENGTH_TEXT2,
      STRENGTH_TEXT3,
    ];
    String itemIndex = (index + 1).toString();
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => StrengthScreen(
              strengthTitle: strengthTitleList[index],
              strengthText: strengthTextList[index],
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(
          left: 14.0,
        ),
        decoration: BoxDecoration(
          color: GREEN,
          border: Border.all(color: GREEN, width: 2),
          borderRadius: BorderRadius.circular(
            RARIUS,
          ),
        ),
        width: 150,
        child: Padding(
          padding: const EdgeInsets.all(
            10.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.black,
                padding: const EdgeInsets.symmetric(
                  horizontal: 7.0,
                  vertical: 1.0,
                ),
                child: Text(
                  '키워드$itemIndex',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: X_SMALL_FONT_SIZE,
                  ),
                ),
              ),
              // 키워드 제목
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                ),
                child: Text(
                  strengthTitleList[index],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: LARGE_FONT_SIZE,
                  ),
                ),
              ),
              const Divider(
                thickness: 1.0,
                color: Colors.black,
              ),
              // 키워드 내용
              Text(
                strengthTextList[index],
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: SMALL_FONT_SIZE,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  padding: const EdgeInsets.only(
                    right: 1.5,
                    bottom: 2.5,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => StrengthScreen(
                          strengthTitle: strengthTitleList[index],
                          strengthText: strengthTextList[index],
                        ),
                      ),
                    );
                  },
                  icon: SvgPicture.asset(
                    down,
                    height: 29,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
