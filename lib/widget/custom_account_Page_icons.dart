import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant/constant.dart';

class CustomAccountIcon extends StatelessWidget {
  const CustomAccountIcon(
      {super.key,
      this.icon,
      required this.text,
      required this.hintText,
      this.arrowIcon,
      this.onPressed});

  final IconData? icon;
  final String text;
  final IconData? arrowIcon;
  final void Function()? onPressed;
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
