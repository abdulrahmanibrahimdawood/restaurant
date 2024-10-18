import 'package:flutter/material.dart';
import 'package:restaurant/constant.dart';
import 'package:restaurant/widget/Container_In_Your_Account_Page.dart';
import 'package:restaurant/widget/custom_account_Page_icons.dart';

class YourAccount extends StatelessWidget {
  const YourAccount({super.key});
  static String id = 'YourAccount';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close),
            )
          ],
          elevation: 0,
          backgroundColor: kPrimaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: Stack(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Image.asset(
                              'lib/assets/images/person_image.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Abdo Ibrahim',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        Text(
                          'abdoibrahim9111@gmail.com',
                          style: TextStyle(
                              color: Colors.grey.withOpacity(0.5),
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomAccountIcon(
                hintText: '200 LE ',
                icon: Icons.account_balance_wallet,
                text: 'My Walled',
                arrowIcon: Icons.arrow_forward_ios,
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomAccountIcon(
                hintText: ' 5 orders',
                icon: Icons.shopping_bag,
                text: 'My Orders',
                arrowIcon: Icons.arrow_forward_ios,
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomAccountIcon(
                hintText: '8 product  ',
                icon: Icons.favorite,
                text: 'My Wish list',
                arrowIcon: Icons.arrow_forward_ios,
              ),
              const SizedBox(
                height: 50,
              ),
              const ContainerInYourAccountPage(
                icon: Icons.percent,
                text: 'Offers',
                arrowIcon: Icons.arrow_forward_ios,
              ),
              const SizedBox(
                height: 10,
              ),
              const ContainerInYourAccountPage(
                icon: Icons.handshake,
                text: 'Join us',
                arrowIcon: Icons.arrow_forward_ios,
              ),
              const SizedBox(
                height: 10,
              ),
              const ContainerInYourAccountPage(
                icon: Icons.info,
                text: 'About us',
                arrowIcon: Icons.arrow_forward_ios,
              ),
              const SizedBox(
                height: 10,
              ),
              const ContainerInYourAccountPage(
                icon: Icons.phone,
                text: 'Contact us',
                arrowIcon: Icons.arrow_forward_ios,
              ),
              const SizedBox(
                height: 10,
              ),
              const ContainerInYourAccountPage(
                icon: Icons.settings,
                text: 'Settings',
                arrowIcon: Icons.arrow_forward_ios,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
