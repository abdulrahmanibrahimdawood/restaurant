import 'package:flutter/material.dart';
import 'package:restaurant/constant.dart';
import 'package:restaurant/widget/custom_inkWell_login.dart';

class Register extends StatelessWidget {
  const Register({super.key});
  static String id = kRegister;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: kPrimaryColor),
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('lib/assets/images/zero.png'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomInkWellLogIn(
                  onTap: () {
                    Navigator.pushNamed(context, kLogInPage);
                  },
                  text: 'Sign in',
                ),
                const CustomInkWellLogIn(
                  text: 'Sign up',
                  borderColor: kPrimaryColor,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
