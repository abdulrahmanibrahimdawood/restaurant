import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant/constant.dart';

class YourAccount extends StatelessWidget {
  const YourAccount({super.key});
  static String id = 'YourAccount';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.close),
            )
          ],
          elevation: 0,
          backgroundColor: kPrimaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: Stack(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Image.asset(
                              'lib/assets/images/person_image.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Abdo Ibrahim',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        Text(
                          'abdoibrahim9111@gmail.com',
                          style: TextStyle(
                              color: Colors.grey.withOpacity(0.5),
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomAccountIcon(
                hintText: '200 LE ',
                icon: Icons.account_balance_wallet,
                text: 'My Walled',
                arrowIcon: Icons.arrow_forward_ios,
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomAccountIcon(
                hintText: ' 5 orders',
                icon: Icons.shopping_bag,
                text: 'My Orders',
                arrowIcon: Icons.arrow_forward_ios,
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomAccountIcon(
                hintText: '8 product  ',
                icon: Icons.favorite,
                text: 'My Wish list',
                arrowIcon: Icons.arrow_forward_ios,
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAccountIcon extends StatelessWidget {
  const CustomAccountIcon(
      {super.key,
      this.icon,
      required this.text,
      required this.hintText,
      this.arrowIcon,
      this.onPressed});

  final IconData? icon;
  final IconData? arrowIcon;
  final void Function()? onPressed;
  final String text;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 40,
              spreadRadius: 2,
              color: Colors.grey.withOpacity(0.15)),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                FaIcon(
                  icon,
                  color: kPrimaryColor,
                  size: 32,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                hintText,
                style: const TextStyle(fontSize: 16, color: Color(0xff63DB1A)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 2),
            child: Row(
              children: [
                IconButton(
                  onPressed: onPressed,
                  icon: FaIcon(
                    arrowIcon,
                    color: kPrimaryColor,
                    size: 32,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}