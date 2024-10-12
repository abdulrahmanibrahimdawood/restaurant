import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant/constant.dart';

class ContainerIconsButtomHomePage extends StatelessWidget {
  const ContainerIconsButtomHomePage({
    super.key,
    this.icon,
    this.onPressed,
  });
  final IconData? icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
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
      child: IconButton(
        onPressed: onPressed,
        icon: FaIcon(
          icon,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
