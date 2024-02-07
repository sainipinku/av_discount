import 'package:av_discount_app/screen/dashboard/invoice.dart';
import 'package:av_discount_app/screen/splash/splash.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         fontFamily: 'DMSans'
      ),
      home: SplashScreen(),
    );
  }
}