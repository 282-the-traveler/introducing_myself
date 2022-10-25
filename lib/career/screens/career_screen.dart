import 'package:flutter/material.dart';
import 'package:yugacrew/common/const/colors.dart';
import 'package:yugacrew/common/const/sizes.dart';
import 'package:yugacrew/common/layout/default_layout.dart';

class CareerScreen extends StatelessWidget {
  final String careerTitle;
  final String careerText;
  final bool isBack;

  const CareerScreen({
    Key? key,
    required this.careerTitle,
    required this.careerText,
    required this.isBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              color: LIGHT_GRAY,
            ),
            SizedBox(
              height: 14.0,
            ),
            Text(
              careerTitle,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: X_LARGE_FONT_SIZE,
              ),
            ),
            SizedBox(
              height: 14.0,
            ),
            Text(
              careerText,
              style: const TextStyle(
                fontSize: MEDIUM_FONT_SIZE,
              ),
            )
          ],
        ),
      ),
    );
  }
}
