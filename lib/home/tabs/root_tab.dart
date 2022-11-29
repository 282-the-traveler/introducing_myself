import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yugacrew/career/screens/career_screen.dart';
import 'package:yugacrew/common/const/colors.dart';
import 'package:yugacrew/common/const/images.dart';
import 'package:yugacrew/common/layout/default_layout.dart';
import 'package:yugacrew/github/screens/github_screen.dart';
import 'package:yugacrew/home/screens/home_screen.dart';
import 'package:yugacrew/motivation/screens/motivation_screen.dart';

class RootTab extends StatefulWidget {
  const RootTab({Key? key}) : super(key: key);

  @override
  State<RootTab> createState() => _RootTabState();
}

class _RootTabState extends State<RootTab> with SingleTickerProviderStateMixin {
  int index = 0;
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 4, vsync: this);
    controller.addListener(tabListener);
  }

  void tabListener() {
    setState(() {
      index = controller.index;
    });
  }

  @override
  void dispose() {
    controller.removeListener(tabListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 바텀네비게이션바
    return DefaultLayout(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.RED,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          controller.animateTo(index);
        },
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: index == 0
                ? SvgPicture.asset(
                    Images.home_red,
                  )
                : SvgPicture.asset(
                    Images.home,
                  ),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: index == 1
                ? SvgPicture.asset(
                    Images.github_red,
                  )
                : SvgPicture.asset(
                    Images.github,
                  ),
            label: '깃허브',
          ),
          BottomNavigationBarItem(
            icon: index == 2
                ? SvgPicture.asset(
                    Images.motivation_red,
                  )
                : SvgPicture.asset(
                    Images.motivation,
                  ),
            label: '지원동기',
          ),
          BottomNavigationBarItem(
            icon: index == 3
                ? SvgPicture.asset(
                    Images.profile_red,
                  )
                : SvgPicture.asset(
                    Images.profile,
                  ),
            label: '경력기술서',
          )
        ],
      ),
      // 탭바뷰
      child: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: const [
          HomeScreen(),
          GithubScreen(
            isBack: false,
          ),
          MotivationScreen(
            isBack: false,
          ),
          CareerScreen(
            isBack: false,
          ),
        ],
      ),
    );
  }
}
