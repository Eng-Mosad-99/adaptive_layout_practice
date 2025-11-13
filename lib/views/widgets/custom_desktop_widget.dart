import 'package:adaptive_layout_practice/views/widgets/custom_item.dart';
import 'package:adaptive_layout_practice/views/widgets/custom_item_2.dart';
import 'package:flutter/material.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: CustomItem(),
        ),
        Expanded(child: CustomItem2()),
      ],
    );
  }
}
