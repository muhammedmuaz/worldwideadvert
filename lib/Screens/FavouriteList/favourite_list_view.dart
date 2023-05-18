import 'package:flutter/material.dart';


class FavouriteListView extends StatelessWidget {
  const FavouriteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const  Text('Favourite List'),
      ),
    );
  }
}