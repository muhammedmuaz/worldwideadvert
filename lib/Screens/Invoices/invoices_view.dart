import 'package:flutter/material.dart';


class InvoiceView extends StatelessWidget {
  const InvoiceView({super.key});

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