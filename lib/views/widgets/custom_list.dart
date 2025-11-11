import 'package:flutter/material.dart';
import 'custom_item.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const AspectRatio(
              aspectRatio: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: CustomItem(),
              ));
        },
        itemCount: 10,
      ),
    );
  }
}
