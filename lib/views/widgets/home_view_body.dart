import 'package:adaptive_layout_practice/views/widgets/custom_list_view.dart';
import 'package:adaptive_layout_practice/views/widgets/custom_sliver_grid.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
            child: LayoutBuilder(
              builder: (context , constrains) {
                print(constrains.maxWidth);
                if(constrains.maxWidth > 600){
                  return const Text('Tablet Layout');
                }
                return const CustomSliverGrid();
              }
            ),
          ),
          const CustomSliverListView(),
        ],
      ),
    );
  }
}
