import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/drawer/drawer_bar.dart';
import 'package:av_discount_app/screen/dashboard/dashboard.dart';
import 'package:av_discount_app/screen/dashboard/invoice/invoice.dart';
import 'package:av_discount_app/screen/dashboard/profile/contact_info.dart';
import 'package:av_discount_app/screen/dashboard/profile/notification.dart';
import 'package:av_discount_app/screen/vendors/profile/transaction_history.dart';
import 'package:av_discount_app/screen/vendors/profile/vendor_contact_info.dart';
import 'package:av_discount_app/screen/vendors/profile/vendor_wallet.dart';

import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:av_discount_app/utils/my_styles.dart';
import 'package:av_discount_app/utils/ui_helper.dart';
import 'package:flutter/material.dart';

import '../vendor_dashboard.dart';


class VendorProfile extends StatefulWidget {
  const VendorProfile({Key? key}) : super(key: key);

  @override
  State<VendorProfile> createState() => _VendorProfileState();
}

class _VendorProfileState extends State<VendorProfile> {
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
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Profile',style: MyStyles.red34BoldStyle,),
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
                    black22Text(
                      'Jonas Macroni',
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20,),

            CustomImageRectangle(icon: "assets/images/contact_us.png", text: "Contact Info",onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => VendorContactInfo(),));
            }, color: MyAppTheme.firstcolors,),
            CustomImageRectangle(
               color: MyAppTheme.secondcolors,
                onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => VendorWalletScreen(),));
            },icon: "assets/images/wallet.png", text: "Wallet"),
            CustomImageRectangle(
              color: MyAppTheme.thirdcolors,
              icon: "assets/images/invoice.png", text: "Invoice",onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => VendorDashBoard(index: 2,),));
            },),
            CustomImageRectangle(
                color: MyAppTheme.forthcolors,
                icon: "assets/images/transaction_history.png", text: "Transaction History",onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TransactionHistory(),));
            }),
            CustomImageRectangle(
              color: MyAppTheme.fivecolors,
              icon: "assets/images/notification.png", text: "Notification",onTap: (){
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

class CustomImageRectangle extends StatelessWidget {
  final String icon;
  final String text;
  final Color color;
  final VoidCallback? onTap;
  const CustomImageRectangle({Key? key, required this.icon,this.onTap, required this.text,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? (){},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14,horizontal: 10),
        margin: const EdgeInsets.symmetric(vertical: 5,),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                //Icon(Icons.navigate_next),
                imgImage(img: icon),
                const SizedBox(width: 20.0,),
                black17PoppinsText(text),
              ],
            ),
            const Icon(Icons.navigate_next)
          ],
        ),
      ),
    );
  }
}
