import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yugacrew/common/const/colors.dart';
import 'package:yugacrew/common/const/sizes.dart';

class MyDataWidget extends StatelessWidget {
  final dynamic movingScreen;
  final String firstImage;
  final String firstText;
  final String middleText;
  final String lastText;
  final String lastImage;
  final bool isFirstRich;
  final bool isLastRich;
  final bool isEdit;

  const MyDataWidget({
    Key? key,
    required this.movingScreen,
    required this.firstImage,
    required this.firstText,
    this.middleText = '',
    required this.lastText,
    required this.lastImage,
    this.isFirstRich = false,
    this.isLastRich = false,
    this.isEdit = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 깃허브, 연락처, 지원동기에 쓰이는 위젯
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => movingScreen,
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(
          left: 14.0,
          top: 19.0,
          right: 14.0,
        ),
        height: 68,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black12,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(
            RARIUS,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            firstImage.isEmpty
                ? const SizedBox.shrink()
                : SvgPicture.asset(
                    firstImage,
                    height: 40,
                  ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                isFirstRich
                    ? Text(
                        firstText,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MEDIUM_FONT_SIZE,
                          color: BLUE,
                          decoration: TextDecoration.underline,
                          decorationColor: UNDERLINE_BLUE,
                          decorationThickness: 10,
                        ),
                      )
                    : Text(
                        firstText,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MEDIUM_FONT_SIZE,
                        ),
                      ),
                middleText.isEmpty
                    ? Text(
                        lastText,
                        style: const TextStyle(
                          fontSize: MEDIUM_FONT_SIZE,
                        ),
                      )
                    : Row(
                        children: [
                          Text(
                            middleText,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: MEDIUM_FONT_SIZE,
                              color: GREEN,
                              decoration: TextDecoration.underline,
                              decorationColor: UNDERLINE_GREEN,
                              decorationThickness: 10,
                            ),
                          ),
                          Text(
                            lastText,
                            style: const TextStyle(
                              fontSize: MEDIUM_FONT_SIZE,
                            ),
                          )
                        ],
                      )
              ],
            ),
            isEdit
                ? InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => movingScreen,
                        ),
                      );
                    },
                    child: Row(
                      children: const [
                        Text(
                          '수정',
                          style: TextStyle(
                            color: GRAY,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: GRAY,
                        ),
                      ],
                    ))
                : IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => movingScreen,
                        ),
                      );
                    },
                    icon: SvgPicture.asset(
                      lastImage,
                      height: 40,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
