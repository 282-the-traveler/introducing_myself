import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yugacrew/common/const/sizes.dart';

class MyDataWidget extends StatelessWidget {
  final dynamic movingScreen;
  final String firstImage;
  final String firstText;
  final String lastText;
  final String lastImage;

  const MyDataWidget({
    Key? key,
    required this.movingScreen,
    required this.firstImage,
    required this.firstText,
    required this.lastText,
    required this.lastImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          border: Border.all(color: Colors.black12, width: 2),
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
                    height: 28,
                  ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  firstText,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MEDIUM_FONT_SIZE,
                  ),
                ),
                Text(
                  lastText,
                  style: const TextStyle(
                    fontSize: MEDIUM_FONT_SIZE,
                  ),
                ),
              ],
            ),
            SvgPicture.asset(
              lastImage,
              height: 28,
            ),
          ],
        ),
      ),
    );
  }
}
