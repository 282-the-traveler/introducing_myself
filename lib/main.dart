import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:yugacrew/home/tabs/root_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YugaCrew',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EasySplashScreen(
        logo: Image.asset('assets/no_image.png'),
        backgroundImage: Image.asset('assets/splash.png').image,
        showLoader: true,
        navigator: RootTab(),
        durationInSeconds: 3,
      ),
    );
  }
}
