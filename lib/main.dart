import 'package:av_discount_app/screen/dashboard/invoice/invoice.dart';
import 'package:av_discount_app/screen/splash/splash.dart';
import 'package:av_discount_app/utils/my_app_theme.dart';
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
        scaffoldBackgroundColor: MyAppTheme.backgroundClr,
         fontFamily: 'DMSans'
      ),
      home: SplashScreen(),
    );
  }
}