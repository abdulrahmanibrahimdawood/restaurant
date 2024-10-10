import 'package:flutter/material.dart';
import 'package:restaurant/constant.dart';
import 'package:restaurant/widget/custom_buttom_login.dart';
import 'package:restaurant/widget/custom_inkWell_login.dart';
import 'package:restaurant/widget/custom_row_divider.dart';
import 'package:restaurant/widget/custom_text_form_feild.dart';
import 'package:restaurant/widget/row_icons_login.dart';

class Register extends StatelessWidget {
  const Register({super.key});
  static String id = kRegister;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(color: kPrimaryColor),
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('lib/assets/images/zero.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
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
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  const CustomTextFormFeild(
                    hintText: 'Email',
                    icon: Icons.email,
                  ),
                  const SizedBox(height: 20),
                  const CustomTextFormFeild(
                      hintText: 'Password', icon: Icons.lock),
                  const SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forget Password !",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const CustomButtomLogIn(text: 'Sign in'),
                  const SizedBox(height: 20),
                  const CustomRowDivider(
                    text: 'Or Sign up with',
                  ),
                  const SizedBox(height: 30),
                  const RowIconsLogIn(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
