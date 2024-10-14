import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant/constant.dart';
import 'package:restaurant/widget/Container_Icons_Buttom_HomePage.dart';
import 'package:restaurant/widget/Container_Image_Profile.dart';
import 'package:restaurant/widget/custom_text_form_feild.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = kHomePage;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
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
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'What would you \n like to eat ?',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
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
              const SizedBox(
                height: 20,
              ),
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
                            const SizedBox(
                              height: 10,
                            ),
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
              const CustomBodyPopuler()
            ],
          ),
        ),
      ),
    );
  }
}

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
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
