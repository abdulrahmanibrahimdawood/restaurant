import 'package:flutter/material.dart';
import 'package:restaurant/constant.dart';

class OpenAppPage extends StatelessWidget {
  const OpenAppPage({super.key});
  static String id = kOpenAppPage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Image.asset('lib/assets/images/zero.png'),
      ),
    );
  }
}
