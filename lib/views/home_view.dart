import 'package:flutter/material.dart';

import 'widgets/custom_drawer.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xffDBDBDB),
      drawer: const CustomDrawer(),
      appBar: buildAppBar(context),
      body: const HomeViewBody(),
    );
  }

  AppBar? buildAppBar(BuildContext context) {
    return MediaQuery.of(context).size.width-32 > 900
        ? null
        : AppBar(
            backgroundColor: Colors.black,
            leading: GestureDetector(
              child: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          );
  }
}

// class CustomAdaptiveAppBar extends StatelessWidget
//     implements PreferredSizeWidget {
//   const CustomAdaptiveAppBar({super.key, this.onTap});
//   final void Function()? onTap;
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constrains) {
//         if (constrains.maxWidth < 900) {
//           return AppBar(
//             backgroundColor: Colors.black,
//             leading: GestureDetector(
//               onTap: onTap,
//               child: const Icon(
//                 Icons.menu,
//                 color: Colors.white,
//               ),
//             ),
//           );
//         } else {
//           return const SizedBox.shrink();
//         }
//       },
//     );
//   }

//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => const Size.fromHeight(56);
// }
