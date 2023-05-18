import 'package:flutter/material.dart';

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.blue,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              )),
          const SizedBox(
            height: 30.0,
          ),
          const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            radius: 40,
          )
        ],
      ),
    );
  }
}
