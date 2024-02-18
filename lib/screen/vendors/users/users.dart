import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/drawer/drawer_bar.dart';
import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:av_discount_app/utils/my_styles.dart';
import 'package:flutter/material.dart';

class Users extends StatefulWidget {
  const Users({Key? key}) : super(key: key);

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _key,
      appBar: customAppBar(context,_key),
      body: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Users Listing',style: MyStyles.red34BoldStyle,),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    var isNegative = true;
                    return Container(
                        padding: const EdgeInsets.only(bottom: 20,top: 15),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: MyAppTheme.blackColor
                                )
                            )
                        ), child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Jonson Deo",style: MyStyles.black14BoldPoppingStyle,),
                            const SizedBox(height: 5,),
                            Text("+91 9988776655",style:  MyStyles.grey14lightPoppingStyle,),
                            const SizedBox(height: 5,),
                            Text("jonson@gmail.com",style:  MyStyles.grey14lightPoppingStyle,)
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            isNegative ? Text("₹ 3000",style: MyStyles.green14BoldStyle,) :
                            Text("- 125.50",style: MyStyles.red14RegularStyle,) ,
                           // const SizedBox(height: 5,),
                            //Text("09:15 AM",style:  MyStyles.grey14lightPoppingStyle,)
                          ],
                        ),
                      ],
                    ));
                  },
                ),
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
}
