import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yugacrew/common/const/colors.dart';
import 'package:yugacrew/common/const/sizes.dart';
import 'package:yugacrew/common/layout/default_layout.dart';
import 'package:yugacrew/github/screens/github_screen.dart';
import 'package:yugacrew/home/widgets/introduction_widget.dart';
import 'package:yugacrew/home/widgets/my_data_widget.dart';
import 'package:yugacrew/home/widgets/strength_widget.dart';
import 'package:yugacrew/motivation/screens/motivation_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final String logo = 'assets/images/logo.svg';
    final String bell = 'assets/images/bell_light.svg';
    final String right = 'assets/images/expand_circle_right.svg';
    final String chat = 'assets/images/chat.svg';
    final String bottle = 'assets/images/bottle.svg';
    final String down = 'assets/images/down.svg';
    final List<String> dropdownItems = [
      '노션',
      '블로그',
    ];
    String? selectedValue;

    return DefaultLayout(
      title: logo,
      elevation: 0,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 14.0,
                    vertical: 17.0,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                      border: Border.all(
                        color: LIGHT_GRAY,
                        width: 1,
                      )),
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 8,
                    right: 10,
                    bottom: 8,
                  ),
                  width: 87,
                  height: 34,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      hint: const Text('이력서'),
                      items: dropdownItems
                          .map(
                            (item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(),
                              ),
                            ),
                          )
                          .toList(),
                      value: selectedValue,
                      alignment: Alignment.centerLeft,
                      dropdownWidth: 182,
                      dropdownMaxHeight: 92,
                      dropdownDecoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          4.0,
                        ),
                        border: Border.all(
                          color: LIGHT_GRAY,
                        ),
                      ),
                      dropdownElevation: 3,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value as String;
                        });
                      },
                      icon: SvgPicture.asset(
                        down,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    bell,
                    height: 28,
                  ),
                ),
              ],
            ),
            const IntroductionWidget(),
            MyDataWidget(
              movingScreen: const GithubScreen(
                isBack: true,
              ),
              firstImage: '',
              firstText: '개발 실력이 더 궁금하다면?',
              lastText: '깃허브에서 커밋로그를 보실 수 있어요!',
              lastImage: right,
            ),
            MyDataWidget(
              movingScreen: const MotivationScreen(
                isBack: true,
              ),
              firstImage: chat,
              firstText: '연락처 보기',
              lastText: '합격 결과는 여기로 통보해 주세요',
              lastImage: right,
            ),
            MyDataWidget(
              movingScreen: const MotivationScreen(
                isBack: true,
              ),
              firstImage: bottle,
              firstText: '육아크루 지원동기',
              lastText: '합류한다면 이런 일을 하고 싶습니다',
              lastImage: right,
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 19.0,
                left: 14.0,
                right: 14.0,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'My Keywords',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: XX_LARGE_FONT_SIZE,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 14.0,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '나를 소개하는 키워드',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 40,
              ),
              height: 178,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return StrengthWidget(
                      index: index,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}