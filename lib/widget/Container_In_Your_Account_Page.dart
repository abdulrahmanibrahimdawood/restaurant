import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant/constant.dart';

class ContainerInYourAccountPage extends StatelessWidget {
  const ContainerInYourAccountPage(
      {super.key,
      this.icon,
      required this.text,
      this.arrowIcon,
      this.onPressed});
  final IconData? icon;
  final String text;
  final IconData? arrowIcon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.5)),
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
          )
        ],
      ),
    );
  }
}
