import 'package:flutter/material.dart';
import 'custom_item_2.dart';

class CustomSliverListView extends StatelessWidget {
  const CustomSliverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(
            top: 16.0,
          ),
          child: CustomItem2(),
        );
      },
      itemCount: 4,
    );
  }
}
