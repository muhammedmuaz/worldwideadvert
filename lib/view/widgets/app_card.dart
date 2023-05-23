import 'package:flutter/material.dart';

Widget myappCard(String title, String text) {
  return Stack(children: [
    // const CircleAvatar(
    //   child: Icon(Icons.home),
    // ),
    Card(
      shape: const RoundedRectangleBorder(
          side: BorderSide(color: Color(0xff160040), width: 1.0)),
      child: Container(
        height: 130.0,
        width: 250.0,
        padding: const EdgeInsets.all(15.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title.toString(),
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff01c6da)),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              text.toString(),
              style: const TextStyle(fontSize: 16.0, color: Colors.green),
            )
          ],
        ),
      ),
    ),
  ]);
}
