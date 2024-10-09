import 'package:flutter/material.dart';
import 'package:restaurant/constant.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  static String id = kFirstPage;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'lib/assets/images/Ellipse.png',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'lib/assets/images/one.png',
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Choose your meal',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              textAlign: TextAlign.center,
              "Lorem ipsum dolor sit amet consectetur.\n Mauris augue donec purus fermentum \n lobortis quis magna aliquam.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(.3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}