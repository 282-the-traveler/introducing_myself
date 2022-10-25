import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yugacrew/common/const/colors.dart';
import 'package:yugacrew/common/const/messages.dart';
import 'package:yugacrew/common/const/sizes.dart';

class StrengthWidget extends StatelessWidget {
  final int index;

  const StrengthWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String down = 'assets/images/expand_circle_down.svg';
    final List<String> strengthTitle = [
      STRENGTH_TITLE1,
      STRENGTH_TITLE2,
      STRENGTH_TITLE3,
    ];
    final List<String> strengthText = [
      STRENGTH_TEXT1,
      STRENGTH_TEXT2,
      STRENGTH_TEXT3,
    ];
    String itemIndex = (index + 1).toString();
    return Container(
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
            Padding(
              padding: const EdgeInsets.only(
                top: 17.0,
              ),
              child: Text(
                strengthTitle[index],
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
            Text(
              strengthText[index],
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
                  top: 11.5,
                  right: 1.5,
                  bottom: 2.5,
                ),
                onPressed: () {},
                icon: SvgPicture.asset(
                  down,
                  height: 29,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
