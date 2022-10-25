import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:yugacrew/common/layout/default_layout.dart';

class GithubScreen extends StatelessWidget {
  final bool isBack;

  const GithubScreen({
    Key? key,
    required this.isBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'Github',
      isBack: isBack,
      child: const WebView(
        initialUrl: 'https://github.com/282-the-traveler',
      ),
    );
  }
}
