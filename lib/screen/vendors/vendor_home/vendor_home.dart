import 'dart:async';
import 'package:av_discount_app/common_ui/common_container.dart';
import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/drawer/drawer_bar.dart';
import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:av_discount_app/utils/my_styles.dart';
import 'package:av_discount_app/utils/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'my_chart.dart';

class VendorHome extends StatefulWidget {
  const VendorHome({Key? key}) : super(key: key);

  @override
  State<VendorHome> createState() => _VendorHomeState();
}

class _VendorHomeState extends State<VendorHome> {
  String type = "vendor";
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _key,
      appBar: customAppBar(
          context, _key, priceContainer(price: "9856", type: type)),
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                black34Text("Poojara Fashions"),
                const SizedBox(height: 25,),
                Row(
                  children: [
                    Expanded(flex: 1,child: homeContainer(
                        title: "All users",
                      imgIcon: "assets/images/user_img.png",
                      circularContainerColor: MyAppTheme.redTextColor,
                      containerColor: const Color(0xFFFFE2E6),
                      price: "9876",
                    )),
                    const SizedBox(width: 25,),
                    Expanded(flex: 1,child: homeContainer(
                      title: "All Products",
                      imgIcon: "assets/images/box.png",
                      circularContainerColor: const Color(0xFFFE947A),
                      containerColor: const Color(0xFFFFF4DE),
                      price: "986",
                    )),
                  ],
                ),
                const SizedBox(height: 25,),
                Row(
                  children: [
                    Expanded(flex: 1,child: homeContainer(
                        title: "Total Discounts",
                      imgIcon: "assets/images/offer.png",
                      circularContainerColor: const Color(0xFF4BDB63),
                      containerColor: const  Color(0xFFDCFCE7),
                      price: "1300",
                    )),
                    const SizedBox(width: 25,),
                    Expanded(flex: 1,child: homeContainer(
                      title: "Total Invoice",
                      imgIcon: "assets/images/invoice.png",
                      circularContainerColor: const Color(0xFFBF83FF),
                      containerColor: const Color(0xFFF4F8CA),
                      price: "105",
                    )),
                  ],
                ),

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: MyAppTheme.whiteColor,
                  ),
                  padding: const EdgeInsets.all(6),
                  margin: const EdgeInsets.only(top: 20),
                  height: height*.3,
                  // color: Colors.black,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Text('User Graph',style: MyStyles.black14BoldStyle,),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 4),
                                  margin: const EdgeInsets.symmetric(horizontal: 8,),
                                  decoration: BoxDecoration(
                                      color: MyAppTheme.redLightColor,
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: white14BoldText('1 Month'),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 4),
                                  margin: const EdgeInsets.symmetric(horizontal: 8,),
                                  decoration: BoxDecoration(
                                      color: MyAppTheme.blackColor,
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: white14BoldText('1 Year'),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(child: MyChart(isShowingMainData: true,))

                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
      drawer: DrawerBar(
        buildContext: context,
      ),
    );
  }

  //const Color(0xFFFFE2E6)
  //MyAppTheme.redTextColor

  homeContainer({
    VoidCallback? onTap,
    required Color containerColor,
    required Color circularContainerColor,
    required String imgIcon,
    required String price,
    required String title,
}){
    return GestureDetector(
      onTap: onTap ?? (){},
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(5, 5),
                  blurRadius: 4,
                  spreadRadius: 0
              ),

            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: circularContainerColor,
                shape: BoxShape.circle,
              ),
              child: Image(
                height: 25,
                width: 25,
                image: AssetImage(imgIcon,),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              price,
              style: MyStyles.black28BoldPoppingStyle,
            ),
            Text(
              title,
              style: MyStyles.blackLight13boldCMStyle,
            ),
          ],
        ),
      ),
    );
  }


}
