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
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            children: [
              Row(
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
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'What would you \n like to eat ?',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              CustomTextFormFeild(
                hintText: 'Search',
                icon: Icons.search,
                color: kPrimaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
