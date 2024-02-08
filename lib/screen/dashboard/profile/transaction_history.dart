import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/drawer/drawer_bar.dart';
import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:av_discount_app/utils/my_styles.dart';
import 'package:av_discount_app/utils/ui_helper.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _key,
      appBar: customAppBar(context,_key),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            black30Text("Transaction History"),
            Text(
              "Today, 14 Jan 2023",
              style: MyStyles.blue14BoldStyle,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {

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
                      black14Text("Poojara Fashions"),
                      const SizedBox(height: 5,),
                      blackLight14Text("ID: GHFI4684JH82d")
                    ],
                  ),
                  Column(
                    children: [
                      Text("+ 125.50",style: MyStyles.green14BoldStyle,),
                      const SizedBox(height: 5,),
                      blackLight14Text("09:15 AM")
                    ],
                  ),
                ],
              ));
              },
            ),
            const SizedBox(height: 20,),
            Text(
              "Monday, 12 Jan 2023",
              style: MyStyles.blue14BoldStyle,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                var isNegative = false;
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
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
                      black14Text("Poojara Fashions"),
                      const SizedBox(height: 5,),
                      blackLight14Text("ID: GHFI4684JH82d")
                    ],
                  ),
                  Column(
                    children: [
                      isNegative ? Text("+ 125.50",style: MyStyles.green14BoldStyle,) :
                      Text("- 125.50",style: MyStyles.red14RegularStyle,) ,
                      const SizedBox(height: 5,),
                      blackLight14Text("09:15 AM")
                    ],
                  ),
                ],
              ));
              },
            ),
          ],
        ),
      ),
      drawer: DrawerBar(
        buildContext: context,
      ),
    );
  }
}
