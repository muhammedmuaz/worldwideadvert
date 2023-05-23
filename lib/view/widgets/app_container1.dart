import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget myAppContiner1(
    final String title, final String label, final String imageName) {
  return Card(
    elevation: 1,
    color: Colors.white,
    child: Container(
      decoration: BoxDecoration(
          // color: Colors.amberAccent,
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imageName.toString()))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, top: 5.0),
            child: Text(
              title.toString(),
              style: GoogleFonts.playfairDisplay(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.location_on,
                ),
                color: Colors.red,
              ),
              Text(
                label.toString(),
                style: GoogleFonts.playfairDisplay(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
