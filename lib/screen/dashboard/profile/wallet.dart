import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/utils/ui_helper.dart';
import 'package:flutter/material.dart';


class WalletScreen extends StatelessWidget {
  WalletScreen({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color(0xffF6F6F9),
        appBar: customAppBar(context, _key),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*Container(
                padding:  const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xff306180),
                  borderRadius: BorderRadius.circular(12),

                ),
                child: const Text(
                  '19,453',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),

              ),*/
              black30Text('Wallet',),

              ///Wallet Container
              Container(
                height: height *.15,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 10),
                decoration: const BoxDecoration(
                    color: Color(0xff1EABAB),
                    borderRadius: BorderRadius.all(Radius.circular(6))

                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        black14Text('Balance'),
                        white20boldText(' ₹ 19,453',),

                      ],
                    ),
                    Image.asset('assets/images/wallet.png')
                  ],
                ),
              ),

              ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.black), // Adding black border
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      black14Text('Poojara Fashion',),
                      red16RegularText('₹ 120',)
                    ],
                  ),
                ),
              ),

            ],
          ),
        )
    );

  }
}