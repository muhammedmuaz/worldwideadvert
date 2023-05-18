import 'package:flutter/material.dart';

Widget myDrawerItem(String title, IconData icon) {
  return Material(
    color: Colors.transparent,
    child: InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: Row(
          children: [
            Icon(
              icon,
              size: 16.0,
              color: Colors.white,
            ),
            const SizedBox(
              width: 20.0,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ],
        ),
      ),
    ),
  );
}
