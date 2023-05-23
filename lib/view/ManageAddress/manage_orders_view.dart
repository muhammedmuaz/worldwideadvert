import 'package:flutter/material.dart';

class ManageOrderPage extends StatelessWidget {
  const ManageOrderPage({super.key});

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
