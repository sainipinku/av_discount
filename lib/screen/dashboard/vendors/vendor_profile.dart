import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/drawer/drawer_bar.dart';
import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:av_discount_app/utils/ui_helper.dart';
import 'package:flutter/material.dart';

class VendorsProfile extends StatefulWidget {
  const VendorsProfile({Key? key}) : super(key: key);

  @override
  State<VendorsProfile> createState() => _VendorsProfileState();
}

class _VendorsProfileState extends State<VendorsProfile> {
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            black34Text('Poojara Fashions'),
            const SizedBox(height: 10,),

            Stack(
              children: [
                Container(
                  height: height*0.15,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: const Image(
                      image: AssetImage("assets/images/vendor_shop.png",),fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: MyAppTheme.redColor,
                      shape: BoxShape.circle
                    ),
                    child: white12DarkText("4.3"),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: MyAppTheme.redColor,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: white12DarkText("Vashali Nagar"),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 8,),
            red16RegularText("30% Discount on New Year "),
            blackLight14Text("when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                vendorOptionBtn(
                    text: "Vendor invoice",
                  width: width*0.40,
                ),
                vendorOptionBtn(text: "View  Offer",
                  width: width*0.4,),
              ],
            ),Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                vendorOptionBtn(text: "View  Transaction",
                  width: width*0.4,),
                vendorOptionBtn(text: "Support",
                  width: width*0.4,),
              ],
            ),
          ].map((e) => Padding(padding: const EdgeInsets.symmetric(vertical: 4),child: e,)).toList(),
        ),
      ),

      drawer: DrawerBar(
        buildContext: context,
      ),
    );

  }

  vendorOptionBtn({
    required String text,
    double? width,
    VoidCallback? onTap,}){
    return InkWell(
      onTap: onTap ?? (){},
      child: Container(
        alignment: Alignment.center,
        width: width ?? double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: MyAppTheme.blackColor,
        ),
        child: white12DarkText(text),
      ),
    );
  }

}
