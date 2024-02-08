import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/drawer/drawer_bar.dart';
import 'package:av_discount_app/screen/dashboard/profile/transaction_history.dart';
import 'package:av_discount_app/screen/dashboard/profile/wallet.dart';
import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:av_discount_app/utils/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'contact_info.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _key,
      appBar: customAppBar(context, _key),
      body: Container(
        color: MyAppTheme.whiteColor,
        height: height,
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            black30Text(
              'Profile',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: (height * 0.07),
                      backgroundImage:
                          const AssetImage('assets/images/profile.png'),
                    ),
                    const SizedBox(height: 20),
                    black20Text(
                      'Jonas Macroni',
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20,),

            CustomRectangle(icon: "assets/icons/wallet.svg", text: "Contact Info",onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ContactInfo(),));
            },),
            CustomRectangle(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => WalletScreen(),));
            },icon: "assets/icons/wallet.svg", text: "Wallet"),
            CustomRectangle(icon: "assets/icons/wallet.svg", text: "Invoice",),
            CustomRectangle(icon: "assets/icons/wallet.svg", text: "Transaction History",onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TransactionHistory(),));
            }),
            CustomRectangle(icon: "assets/icons/wallet.svg", text: "Notification",),

          ],
        ),
      ),
      drawer: DrawerBar(
        buildContext: context,
      ),
    );
  }
}

class CustomRectangle extends StatelessWidget {
  final String icon;
  final String text;
  final VoidCallback? onTap;
   const CustomRectangle({Key? key, required this.icon,this.onTap, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? (){},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        margin: const EdgeInsets.symmetric(vertical: 5,),
        decoration: BoxDecoration(
          color: MyAppTheme.whiteColor,
          borderRadius: BorderRadius.circular(4),
          boxShadow:  [
            BoxShadow(
              color: MyAppTheme.greyColor,
              offset: const Offset(5, 5),
              blurRadius: 10,
              spreadRadius: -2,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                //Icon(Icons.navigate_next),
                svgImage(img: icon),
                black16Text(text),
              ],
            ),
            const Icon(Icons.navigate_next)
          ],
        ),
      ),
    );
  }
}
