import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant/constant.dart';
import 'package:restaurant/widget/Container_Icons_Buttom_HomePage.dart';
import 'package:restaurant/widget/Container_Image_Profile.dart';
import 'package:restaurant/widget/Custom_buttom_appBar_.dart';
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const ContainerIconsButtomHomePage(
                          icon: FontAwesomeIcons.bars,
                        ),
                        Row(
                          children: [
                            const ContainerIconsButtomHomePage(
                              icon: FontAwesomeIcons.bell,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            ContainerImageProfile(
                              onTap: () {
                                Navigator.pushNamed(context, kYourAccountPage);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'What would you \n like to eat ?',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
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
                    const BodyBottomAppBar(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
