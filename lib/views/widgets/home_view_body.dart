import 'package:flutter/material.dart';
import 'mobile_layout.dart';
import 'tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.symmetric(horizontal: 16),
      child: LayoutBuilder(
        builder: (context , constrains) {
       if(constrains.maxWidth > 600) {
           return const TabletLayout();
       } else {
           return const MobileLayout();
       }
        }
      ),
    );
  }
}
