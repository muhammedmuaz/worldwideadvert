import 'package:flutter/material.dart';

Widget myDrawerItem(IconData icon, String title) {
  return Material(
    child: InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Icon(
              icon,
              size: 16.0,
              color: Colors.black,
            ),
            const SizedBox(
              width: 20.0,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 16.0, color: Colors.black),
            ),
          ],
        ),
      ),
    ),
  );
}
