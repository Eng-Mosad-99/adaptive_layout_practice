import 'package:adaptive_layout_practice/views/widgets/desktop_layout.dart';
import 'package:flutter/material.dart';
import 'mobile_layout.dart';
import 'tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: LayoutBuilder(
        builder: (context, constrains) {
          if (constrains.maxWidth < 600) {
            return const MobileLayout();
          } else if (constrains.maxWidth < 900) {
            return const TabletLayout();
          } else {
            return const DesktopLayout();
          }
        },
      ),
    );
  }
}
