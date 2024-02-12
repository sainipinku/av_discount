
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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          color: MyAppTheme.whiteColor,
          height: height,
          width: width,
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(onPressed: () {
                      Navigator.pop(context);
                    }, icon: const Icon(Icons.arrow_back_ios)),
                    Text("Register to AV Discount",style: MyStyles.black28BoldPoppingStyle,),
                    SizedBox(height: 10,),
                    fullNameTextField(
                      controller: nameController,
                    ),
                    const SizedBox(height: 10,),
                    phoneTextField(controller: mobileController),
                    SizedBox(height: 10,),
                    emailTextField(
                      controller: nameController,
                    ),
                    SizedBox(height: 90,),
                    mainBtn(text: 'Register',
                        onTap: (){}, enble: 'txt'),
                    SizedBox(height: 20,),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: MyStyles.grey14RegularPoppingStyle,
                        children: <TextSpan>[
                          TextSpan(text: 'By Registering you agree  to',),
                          TextSpan(
                              text: 'Terms & condition',
                              style: MyStyles.red14RegularStyle),
                          TextSpan(text: ' and ',style: MyStyles.grey14RegularPoppingStyle),
                          TextSpan(
                              text: 'privacy policy ',
                              style: MyStyles.red14RegularStyle),
                          TextSpan(text: 'of the av discount ',),

                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
