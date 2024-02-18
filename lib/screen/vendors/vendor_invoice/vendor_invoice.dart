

import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/drawer/drawer_bar.dart';
import 'package:av_discount_app/screen/vendors/vendor_invoice/create_invoice.dart';
import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:av_discount_app/utils/ui_helper.dart';
import 'package:flutter/material.dart';

import '../../../utils/my_styles.dart';


class VendorInvoice extends StatefulWidget {
  const VendorInvoice({super.key});

  @override
  State<VendorInvoice> createState() => _VendorInvoiceState();
}

class _VendorInvoiceState extends State<VendorInvoice> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _key,
      appBar: customAppBar(context,_key),
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Text('Invoice',style: MyStyles.red34BoldStyle,),
            Container(
              width: width,
              height: 50,
              padding: EdgeInsets.only(left: 15.0,right: 10.0),
              decoration: BoxDecoration(
                color: MyAppTheme.lightGreenColors,
                borderRadius: BorderRadius.all(Radius.circular(30.0))
              ),
              child: TextField(
                    controller: searchController,
                decoration: new InputDecoration(
                  icon: new Icon(Icons.search),
                  border: InputBorder.none,
                  hintText : "Enter User Details....",
              ),
            )),
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
                            Text('Poojara Fashions',style: MyStyles.black14BoldPoppingStyle,),
                            Text('ID: GHFI4684JH82d',style: MyStyles.blackLight14LightPoppingStyle,),
                            Text('09:15 AM, 14 Jan 2023',style: MyStyles.blackLight14LightPoppingStyle,),
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
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => CreateInvoice(),));
        },
        shape: const CircleBorder(),
        backgroundColor: MyAppTheme.blackColor,
        child: Icon(Icons.add,color: MyAppTheme.whiteColor,),
      ),
      drawer: DrawerBar(
        buildContext: context,
      ),
    );
  }//BoxDecoration
}