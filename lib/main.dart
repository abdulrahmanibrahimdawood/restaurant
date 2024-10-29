import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/constant.dart';
import 'package:restaurant/pages/first_page.dart';
import 'package:restaurant/pages/home_page.dart';
import 'package:restaurant/pages/login_page.dart';
import 'package:restaurant/pages/on_board_screen.dart';
import 'package:restaurant/pages/open_app_page.dart';
import 'package:restaurant/pages/orderd_page.dart';
import 'package:restaurant/pages/register_page.dart';
import 'package:restaurant/pages/scound_page.dart';
import 'package:restaurant/pages/third_page.dart';
import 'package:restaurant/pages/your_Account.dart';

void main() {
  runApp(const RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        kOnBoardScreenState: (context) => const OnBoardScreenState(),
        kOpenAppPage: (context) => const OpenAppPage(),
        kFirstPage: (context) => const FirstPage(),
        kScoundPage: (context) => const ScoundPage(),
        kThirdPage: (context) => const ThirdPage(),
        kLogInPage: (context) => const LogInPage(),
        kRegister: (context) => const Register(),
        kHomePage: (context) => const HomePage(),
        kYourAccountPage: (context) => const YourAccount(),
        kOrderdPage: (context) => const OrderdPage(),
      },
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        backgroundColor: Colors.white,
        body: HomePage(),
        // AnimatedSplashScreen(
        //   duration: 2000,
        //   splash: 'lib/assets/images/zero.png',
        //   nextScreen: const OnBoardScreenState(),
        //   splashTransition: SplashTransition.fadeTransition,
        //   backgroundColor: kPrimaryColor,
        // ),
      ),
    );
  }
}
