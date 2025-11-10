import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xffDBDBDB),
      child: Column(
        children: <Widget>[
          const DrawerHeader(
            child: Icon(
              Icons.favorite,
              size: 50 ,
            ),
          ),
        ],
      ),
    );
  }
}
