import 'package:flutter/material.dart';
import 'package:restaurant/widget/custom_body_item.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return const CustomBodyItem();
        }),
      ),
    );
  }
}
