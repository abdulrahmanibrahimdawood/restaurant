import 'package:flutter/material.dart';
import 'package:restaurant/constant.dart';
import 'package:restaurant/widget/Container_Icons_Buttom_HomePage.dart';

class CustomBodyItem extends StatelessWidget {
  const CustomBodyItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Container(
        height: 300,
        width: 270,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 40,
              spreadRadius: 2,
              color: Colors.grey.withOpacity(0.1),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffFDBB9C),
                      ),
                      child: Image.asset('lib/assets/images/borger.png'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 15, top: 5),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.favorite,
                          size: 30,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Shesseburges with\nbeef',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    '🔥 45 calories',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                        fontSize: 16),
                  ),
                ),
                const SizedBox(height: 5),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r'$14.99',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      ContainerIconsButtomHomePage(
                        hight: 45,
                        width: 45,
                        icon: Icons.add,
                        colorbox: kPrimaryColor,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
