
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                black16Text("Sign Up"),
                const SizedBox(height: 6,),
                blackLight12Text("Let's Start To Earn"),
                const SizedBox(height: 6,),
                customTextField(
                    hintText: "Enter Your SponsorId",
                    controller: nameController,
                    prefixIcon: Icon(Icons.person,color: MyAppTheme.blackColor,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    mainBtn(text: 'Check User Exist',
                        width: width*.5,
                        onTap: (){}, enble: ''),
                  ],
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                        onTap: (){},
                        child: SizedBox(
                        height: 50,
                        width: 50,
                        child: Icon(Icons.arrow_drop_down,size: 35,color: MyAppTheme.blackLightColor,))),

                    SizedBox(
                      width: width*.6,
                      child: underLineTextField(
                          hintText: "Enter Your Mobile No",
                          controller: mobileController),
                    ),
                  ],
                ),
                mainBtn(text: 'Sign Up',
                    width: width*.7,
                    onTap: (){}, enble: ''),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    black14Text(alreadyHaveAccount),
                    const SizedBox(width: 5,),
                    GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn(),));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            signIn,
                            style: MyStyles.black16BoldStyle,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
