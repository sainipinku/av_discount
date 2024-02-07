import 'package:av_discount_app/screen/dashboard/dashboard.dart';
import 'package:av_discount_app/screen/dashboard/invoice.dart';
import 'package:av_discount_app/screen/dashboard/listview.dart';
import 'package:av_discount_app/screen/dashboard/map.dart';
import 'package:av_discount_app/screen/dashboard/poojara%20fashion.dart';
import 'package:av_discount_app/screen/dashboard/profile.dart';
import 'package:av_discount_app/screen/dashboard/vernders.dart';
import 'package:av_discount_app/screen/dashboard/wallet.dart';
import 'package:av_discount_app/screen/splash/splash.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Wallet(),
    );
  }
}