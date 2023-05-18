import 'package:flutter/material.dart';
import 'package:worldwideadverts/Screens/widgets/my_drawer_header.dart';
import 'package:worldwideadverts/Screens/widgets/my_drawer_list.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            const MyDrawerHeader(),
            drawerList(),
          ],
        ),
      ),
    ));
  }
}
