

import 'package:flutter/material.dart';


class Invoice extends StatefulWidget {
  const Invoice({super.key});

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        drawer: Drawer(
        child: ListView(
        padding: const EdgeInsets.all(0),
    children: [
    const DrawerHeader(
    decoration: BoxDecoration(
    color: Colors.black,
    ), child: null,
    )]
    ),
        )
    );
  }//BoxDecoration
}