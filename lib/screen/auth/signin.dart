
import 'package:av_discount_app/screen/auth/otp.dart';
import 'package:av_discount_app/screen/auth/signup.dart';
import 'package:av_discount_app/utils/helpers/textfields.dart';
import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../utils/my_styles.dart';
import '../../utils/ui_helper.dart';
import '../dashboard/dashboard.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
              'assets/images/Ellipse.jpg',
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.50,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(30),
                child: Center(
                  child: Image.asset(
                    'assets/images/signin.png',
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.50,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    phoneTextField(
                        controller: phoneController),
                    mainBtn(text: 'Send OTP',
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Otp(),));
                        }, enble: phoneController.text),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(alreadyHaveAccount,style: MyStyles.grey14RegularPoppingStyle,),
                        const SizedBox(width: 5,),
                        GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp(),));
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                registerNow,
                                style: MyStyles.red16RegularStyle,
                              ),
                            ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),

          ],
        )
        ,
      ),
    );
  }
}
