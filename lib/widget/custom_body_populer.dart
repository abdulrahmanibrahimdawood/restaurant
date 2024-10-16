import 'package:flutter/material.dart';
import 'package:restaurant/constant.dart';

class CustomBodyPopuler extends StatelessWidget {
  const CustomBodyPopuler({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Popular',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Row(
          children: [
            const Text(
              'See All',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward,
                color: kPrimaryColor,
              ),
            )
          ],
        ),
      ],
    );
  }
}
