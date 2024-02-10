import 'package:av_discount_app/screen/auth/signin.dart';
import 'package:av_discount_app/utils/helpers/textfields.dart';
import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../utils/constants.dart';
import '../../utils/my_styles.dart';
import '../../utils/ui_helper.dart';
import '../dashboard/dashboard.dart';


class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: Container(
          margin: EdgeInsets.only(left: 25, right: 25),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Enter 4 digit code sent to you",textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  Pinput(
                    length: 4,
                    showCursor: true,
                    onCompleted: (pin) => print(pin),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  mainBtn(text: 'Verify',
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashBoard(inndex: 0,),));
                      }, enble: 'txt'),
                  SizedBox(
                    height: 30,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: MyStyles.black14BoldStyle,
                      children: <TextSpan>[
                        TextSpan(text: 'Didn’t receive a verification code?\n',),
                        TextSpan(
                            text: 'Send Otp ',
                            style: MyStyles.red14RegularStyle),
                        TextSpan(text: ' | ',),
                        TextSpan(
                            text: ' Change Number ',
                            style: MyStyles.red14RegularStyle),


                      ],
                    ),
                  )
                ]
            ),
          )
      ),
    );
  }
}
