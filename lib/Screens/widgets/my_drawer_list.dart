import 'package:flutter/material.dart';
import 'package:worldwideadverts/Screens/widgets/my_drawer_item.dart';

Widget drawerList() {
  return Container(
    padding: const EdgeInsets.only(top: 15.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        myDrawerItem(Icons.home, "Home"),
        myDrawerItem(Icons.category, "Categories"),
        myDrawerItem(Icons.cell_tower, "My Order"),
        myDrawerItem(Icons.favorite, "Favourite List"),
        const Divider(
          height: 3,
          color: Colors.black,
        ),
        myDrawerItem(Icons.category, "Rating & Review"),
        myDrawerItem(Icons.cell_tower, "My Wallet"),
        myDrawerItem(Icons.favorite, "Settings"),
        const Divider(
          height: 3,
          color: Colors.black,
        ),
      ],
    ),
  );
}
