import 'package:flutter/material.dart';

class ManageOrderView extends StatelessWidget {
  const ManageOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Manage Orders'),
      ),
    );
  }
}
