import 'package:flutter/material.dart';


class InvoicePage extends StatelessWidget {
  const InvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const  Text('Invoice View'),
      ),
    );
  }
}