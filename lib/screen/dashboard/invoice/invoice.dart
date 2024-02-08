

import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/drawer/drawer_bar.dart';
import 'package:av_discount_app/utils/ui_helper.dart';
import 'package:flutter/material.dart';

import '../../../utils/my_styles.dart';


class Invoice extends StatefulWidget {
  const Invoice({super.key});

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
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
          children:
          [
            black30Text('Invoice',),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black54,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.65,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            black14DarkText('Poojara Fashions',),
                            blackLight14Text('ID: GHFI4684JH82d'),
                            blackLight14Text('09:15 AM, 14 Jan 2023',),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Text('₹ 1825.50',style: MyStyles.green14BoldStyle),)
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      drawer: DrawerBar(
        buildContext: context,
      ),
    );
  }//BoxDecoration
}