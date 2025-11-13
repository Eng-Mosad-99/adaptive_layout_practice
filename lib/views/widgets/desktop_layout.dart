import 'package:adaptive_layout_practice/views/widgets/custom_drawer.dart';
import 'package:adaptive_layout_practice/views/widgets/tablet_layout.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        CustomDrawer(),
        Expanded(child: TabletLayout()),
      ],
    );
  }
}
