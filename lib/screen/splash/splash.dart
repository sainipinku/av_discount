
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../auth/signin.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2),() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignIn(),)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: Center
        (child: Image.asset("assets/images/splash.png"),
      ),
    );
  }
}
