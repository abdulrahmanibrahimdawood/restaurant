import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant/constant.dart';
import 'package:restaurant/widget/Container_Icons_Buttom_HomePage.dart';
import 'package:restaurant/widget/Container_Image_Profile.dart';
import 'package:restaurant/widget/custom_body_populer.dart';
import 'package:restaurant/widget/custom_text_form_feild.dart';
import 'package:restaurant/widget/item_list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String id = kHomePage;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ContainerIconsButtomHomePage(
                        icon: FontAwesomeIcons.bars,
                      ),
                      Row(
                        children: [
                          ContainerIconsButtomHomePage(
                            icon: FontAwesomeIcons.bell,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ContainerImageProfile(),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'What would you \n like to eat ?',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 300,
                        child: CustomTextFormFeild(
                          hintText: 'Search',
                          icon: Icons.search,
                          color: kPrimaryColor,
                        ),
                      ),
                      ContainerIconsButtomHomePage(icon: Icons.settings)
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 135,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Pizza\nAnd Fries',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8)),
                                  height: 30,
                                  width: 75,
                                  child: const Center(
                                    child: Text(
                                      '34 LE',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: kPrimaryColor,
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image.asset('lib/assets/images/pizza.png'),
                          Image.asset('lib/assets/images/fries.png'),
                          const Column(
                            children: [
                              SizedBox(
                                height: 89,
                              ),
                              Text(
                                '24-26 june',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const CustomBodyPopuler(),
                  const SizedBox(height: 5),
                  const ItemListView(),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomBottomAppBarIcons(
                        onPressed: () {
                          setState(() {
                            activeIndex = 0;
                          });
                        },
                        icon: FontAwesomeIcons.house,
                        text: 'Home',
                        isActive: activeIndex == 0,
                      ),
                      CustomBottomAppBarIcons(
                        onPressed: () {
                          setState(() {
                            activeIndex = 1;
                          });
                        },
                        icon: Icons.category,
                        text: 'Categories',
                        isActive: activeIndex == 1,
                      ),
                      CustomBottomAppBarIcons(
                        onPressed: () {
                          setState(() {
                            activeIndex = 2;
                          });
                        },
                        icon: Icons.shopping_basket,
                        text: 'Shopping',
                        isActive: activeIndex == 2,
                      ),
                      CustomBottomAppBarIcons(
                        onPressed: () {
                          setState(() {
                            activeIndex = 3;
                          });
                        },
                        icon: FontAwesomeIcons.user,
                        text: 'Profile',
                        isActive: activeIndex == 3,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBottomAppBarIcons extends StatelessWidget {
  const CustomBottomAppBarIcons({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
    required this.isActive,
  });

  final String text;
  final IconData icon;
  final void Function()? onPressed;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: FaIcon(icon, color: isActive ? kPrimaryColor : Colors.grey),
        ),
        Text(
          text,
          style: TextStyle(color: isActive ? kPrimaryColor : Colors.grey),
        ),
      ],
    );
  }
}
