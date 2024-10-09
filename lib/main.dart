import 'package:flutter/material.dart';
import 'package:restaurant/constant.dart';
import 'package:restaurant/pages/first_page.dart';
import 'package:restaurant/pages/on_board_screen.dart';
import 'package:restaurant/pages/open_app_page.dart';
import 'package:restaurant/pages/scound_page.dart';
import 'package:restaurant/pages/third_page.dart';

void main() {
  runApp(const RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        kOnBoardScreenState: (context) => OnBoardScreenState(),
        kOpenAppPage: (context) => OpenAppPage(),
        kFirstPage: (context) => FirstPage(),
        kScoundPage: (context) => ScoundPage(),
        kThirdPage: (context) => ThirdPage(),
      },
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        backgroundColor: Colors.white,
        body: OnBoardScreenState(),
      ),
    );
  }
}
