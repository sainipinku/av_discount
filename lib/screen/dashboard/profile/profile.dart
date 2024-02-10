import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/drawer/drawer_bar.dart';
import 'package:av_discount_app/screen/dashboard/dashboard.dart';
import 'package:av_discount_app/screen/dashboard/invoice/invoice.dart';
import 'package:av_discount_app/screen/dashboard/profile/notification.dart';
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
        height: height,
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            black34Text(
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

            CustomImageRectangle(icon: "assets/images/contact_us.png", text: "Contact Info",onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ContactInfo(),));
            },),
            CustomImageRectangle(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => WalletScreen(),));
            },icon: "assets/images/wallet.png", text: "Wallet"),
            CustomImageRectangle(icon: "assets/images/invoice.png", text: "Invoice",onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoard(inndex: 2,),));
            },),
            CustomImageRectangle(icon: "assets/images/transaction_history.png", text: "Transaction History",onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TransactionHistory(),));
            }),
            CustomImageRectangle(icon: "assets/images/notification.png", text: "Notification",onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen(),));
            },),

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
    return GestureDetector(
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


class CustomImageRectangle extends StatelessWidget {
  final String icon;
  final String text;
  final VoidCallback? onTap;
  const CustomImageRectangle({Key? key, required this.icon,this.onTap, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                imgImage(img: icon),
                SizedBox(width: 5.0,),
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
