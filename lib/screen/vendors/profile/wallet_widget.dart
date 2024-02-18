import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/utils/my_styles.dart';
import 'package:av_discount_app/utils/ui_helper.dart';
import 'package:flutter/material.dart';


class WalletWidget extends StatefulWidget {
  const WalletWidget({Key? key}) : super(key: key);

  @override
  State<WalletWidget> createState() => _WalletWidgetState();
}

class _WalletWidgetState extends State<WalletWidget> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F9),
      appBar: customAppBar(
          context,
          _key,
          priceContainer(price: "9856", type: "type")
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
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
              Text('Wallet',style: MyStyles.red34BoldStyle,),


              ///Wallet Container
              Container(
                height: height *.15,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.only(bottom: 10,top: 10),
                decoration: const BoxDecoration(
                    color: Color(0xffFFE1A4),
                    borderRadius: BorderRadius.all(Radius.circular(6))
                ),

                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Balance',style: MyStyles.black14MediumPoppingStyle,),
                        Text('₹ 19,453',style: MyStyles.red24mediumStyle,),
                      ],
                    ),
                    Container(

                      decoration: const BoxDecoration(
                          color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      padding: EdgeInsets.all(10.0),
                        child: Image.asset('assets/images/wallet_img.png'))
                  ],
                ),
              ),

              const SizedBox(height: 10,),
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
                      Text('Poojara Fashion',style: MyStyles.black14BoldPoppingStyle,),
                      Text('₹ 120',style: MyStyles.red16BoldQuicksandStyle,)
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
