import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/drawer/drawer_bar.dart';
import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:av_discount_app/utils/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _key,
      backgroundColor: MyAppTheme.whiteColor,
      body: SafeArea(
        child: Container(
          color: MyAppTheme.whiteColor,
          height: height,
          width: width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              black30Text(
                'ContactInfo',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: (height * 0.14),
                            width: width*.5,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle
                            ),
                            child:Image(
                            image:  AssetImage('assets/images/profile.png'),)
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.edit
                            ),
                          )
                        ],
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
        
        
            ],
          ),
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
