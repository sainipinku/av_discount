import 'package:av_discount_app/screen/dashboard/invoice.dart';
import 'package:flutter/material.dart';
import 'screen/splash/splash.dart';
import 'dart:html';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Invoice(),
    );
  }
}