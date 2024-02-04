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
                    "Enter 4 digit code sent to you",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Pinput(
                    length: 4,
                    // defaultPinTheme: defaultPinTheme,
                    // focusedPinTheme: focusedPinTheme,
                    // submittedPinTheme: submittedPinTheme,

                    showCursor: true,
                    onCompleted: (pin) => print(pin),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.lightBlue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: Text("Verify",style: TextStyle(color: Colors.white))),
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              'phone',
                                  (route) => false,
                            );
                          },

                          child: Text(
                            "Didn’t receive a verification code?",
                            style: TextStyle(color: Colors.grey),
                          )),

                      Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(
                                  context,
                                  'phone',
                                      (route) => false,
                                );
                              },

                              child: Text(
                                "Resend code | Change Number",
                                style: TextStyle(color: Colors.grey),
                              ))

                        ],
                      )
                    ],
                  ),]
            ),
          )
      ),
    );
  }
}
