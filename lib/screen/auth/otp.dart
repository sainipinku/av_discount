import 'package:av_discount_app/screen/auth/signin.dart';
import 'package:av_discount_app/screen/vendors/vendor_dashboard.dart';
import 'package:av_discount_app/utils/helpers/textfields.dart';
import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../utils/constants.dart';
import '../../utils/my_styles.dart';
import '../../utils/ui_helper.dart';
import '../dashboard/dashboard.dart';


class Otp extends StatefulWidget {
  int type;
  Otp({super.key,required this.type});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: Container(
          margin: const EdgeInsets.only(left: 25, right: 25),

          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Enter 4 digit code sent to you",textAlign: TextAlign.center,
                    style: MyStyles.black28BoldPoppingStyle,
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  Pinput(
                    length: 4,
                    showCursor: true,
                    onCompleted: (pin) => print(pin),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  mainBtn(
                      text: 'Verify',
                      onTap: (){
                        if(widget.type ==1) {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashBoard(inndex: 0,),));
                        } else{
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VendorDashBoard(index: 0,),));
                        }
                      }, enble: 'txt'),
                  const SizedBox(
                    height: 30,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: MyStyles.grey15RegularPoppingStyle,
                      children: <TextSpan>[
                        const TextSpan(text: 'Didn’t receive a verification code?\n',),
                        TextSpan(
                            text: 'Send Otp ',
                            style: MyStyles.red14RegularStyle),
                        TextSpan(text: ' | ',style: MyStyles.red14RegularStyle),
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
