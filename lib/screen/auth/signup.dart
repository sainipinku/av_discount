
import 'package:av_discount_app/screen/auth/signin.dart';
import 'package:av_discount_app/utils/helpers/textfields.dart';
import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../utils/my_styles.dart';
import '../../utils/ui_helper.dart';
import '../dashboard/dashboard.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late double height;
  late double width;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: MyAppTheme.whiteColor,
          height: height,
          width: width,
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10).copyWith(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(onPressed: () {

                    }, icon: Icon(Icons.arrow_back_ios)),
                  ),
                  black20Text("Register to AV Discount"),
                  SizedBox(height: 10,),
                  phoneTextField(
                      controller: mobileController),
                  SizedBox(height: 10,),
                  fullNameTextField(
                    controller: nameController,
                  ),
                  SizedBox(height: 10,),
                  emailTextField(
                    controller: nameController,
                  ),

                ],
              ),
              Column(
                children: [
                  mainBtn(text: 'Register',
                      onTap: (){}, enble: 'txt'),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: MyStyles.black14BoldStyle,
                      children: <TextSpan>[
                        TextSpan(text: 'By Registering you agree  to',),
                        TextSpan(
                            text: 'Terms & condition',
                            style: MyStyles.red14RegularStyle),
                        TextSpan(text: 'and ',),
                        TextSpan(
                            text: 'privacy policy ',
                            style: MyStyles.red14RegularStyle),
                        TextSpan(text: 'of the av discount ',),

                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
