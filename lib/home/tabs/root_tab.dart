import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yugacrew/career/screens/career_screen.dart';
import 'package:yugacrew/common/const/colors.dart';
import 'package:yugacrew/common/const/messages.dart';
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
    final String home = 'assets/images/home.svg';
    final String home_red = 'assets/images/home_red.svg';
    final String github = 'assets/images/github.svg';
    final String github_red = 'assets/images/github_red.svg';
    final String motivation = 'assets/images/motivation.svg';
    final String motivation_red = 'assets/images/motivation_red.svg';
    final String profile = 'assets/images/profile.svg';
    final String profile_red = 'assets/images/profile_red.svg';

    return DefaultLayout(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: RED,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          controller.animateTo(index);
        },
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: index == 0
                ? SvgPicture.asset(
                    home_red,
                  )
                : SvgPicture.asset(
                    home,
                  ),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: index == 1
                ? SvgPicture.asset(
                    github_red,
                  )
                : SvgPicture.asset(
                    github,
                  ),
            label: '깃허브',
          ),
          BottomNavigationBarItem(
            icon: index == 2
                ? SvgPicture.asset(
                    motivation_red,
                  )
                : SvgPicture.asset(
                    motivation,
                  ),
            label: '지원동기',
          ),
          BottomNavigationBarItem(
            icon: index == 3
                ? SvgPicture.asset(
                    profile_red,
                  )
                : SvgPicture.asset(
                    profile,
                  ),
            label: '경력기술서',
          )
        ],
      ),
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
            careerTitle: CAREER_TITLE,
            careerText: CAREER_TEXT,
          ),
        ],
      ),
    );
  }
}
