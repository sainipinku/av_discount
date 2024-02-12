import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/drawer/drawer_bar.dart';
import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:av_discount_app/utils/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/my_styles.dart';

class VendorsProfile extends StatefulWidget {
  const VendorsProfile({Key? key}) : super(key: key);

  @override
  State<VendorsProfile> createState() => _VendorsProfileState();
}

class _VendorsProfileState extends State<VendorsProfile> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); //// Create a key
  int selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
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
                      image: AssetImage("assets/images/img.png",),fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: MyAppTheme.redLightColor,
                      shape: BoxShape.circle
                    ),
                    child: Text("4.3",style: MyStyles.white10BoldPoppingStyle,),
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
                    child: Text("Vashali Nagar",style: MyStyles.white10BoldPoppingStyle,),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 8,),
            Text("30% Discount on New Year ",style: MyStyles.red16MediumPoppinsStyle,),
            Text("when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
            style: MyStyles.black14LightPoppingStyle,
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                vendorOptionBtn(
                    text: "Vendor invoice",
                  width: width*0.42,
                ),
                vendorOptionBtn(text: "View  Offer",
                  width: width*0.42,),
              ],
            ),Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                vendorOptionBtn(text: "View  Transaction",
                  width: width*0.42,),
                vendorOptionBtn(text: "Support",
                  width: width*0.42,),
              ],
            ),
          ].map((e) => Padding(padding: const EdgeInsets.symmetric(vertical: 4),child: e,)).toList(),
        ),
      ),

      drawer: DrawerBar(
        buildContext: context,
      ),

      bottomNavigationBar:BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: selectedIndex == 0 ? SvgPicture.asset(
              'assets/icons/home.svg',
              allowDrawingOutsideViewBox: true,
              height: 20,
              width: 20,
              color: MyAppTheme.selecttxt,
            ): SvgPicture.asset(
              'assets/icons/home.svg',
              allowDrawingOutsideViewBox: true,
              height: 20,
              width: 20,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: selectedIndex == 1
                ?  SvgPicture.asset(
              'assets/icons/profile.svg',
              allowDrawingOutsideViewBox: true,
              height: 20,
              width: 20,
              color: MyAppTheme.selecttxt,
            ) : SvgPicture.asset(
              'assets/icons/profile.svg',
              allowDrawingOutsideViewBox: true,
              height: 20,
              width: 20,
              color: Colors.white,
            ),
            label: 'Venders',
          ),
          BottomNavigationBarItem(
            icon: selectedIndex == 2
                ?  SvgPicture.asset(
              'assets/icons/invoice.svg',
              allowDrawingOutsideViewBox: true,
              height: 20,
              width: 20,
              color: MyAppTheme.selecttxt,
            ): SvgPicture.asset(
              'assets/icons/invoice.svg',
              allowDrawingOutsideViewBox: true,
              height: 20,
              width: 20,
              color: Colors.white,
            ),
            label: 'Invoice',
          ),
          BottomNavigationBarItem(
            icon: selectedIndex == 3
                ?  SvgPicture.asset(
              'assets/icons/profile.svg',
              allowDrawingOutsideViewBox: true,
              height: 20,
              width: 20,
              color: MyAppTheme.selecttxt,
            ): SvgPicture.asset(
              'assets/icons/profile.svg',
              allowDrawingOutsideViewBox: true,
              height: 20,
              width: 20,
              color: Colors.white,
            ),
            label: 'Profile',
          ),


        ],
        currentIndex: selectedIndex,
        backgroundColor: MyAppTheme.btnColor,
        selectedLabelStyle:  GoogleFonts.catamaran(
          fontWeight: FontWeight.w500,
          height: 1.5,
          fontSize: 13,
          color: MyAppTheme.selecttxt,
        ),
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: GoogleFonts.catamaran(
          fontWeight: FontWeight.w500,
          height: 1.5,
          fontSize: 12,
          color: Colors.white,
        ),
        selectedItemColor: MyAppTheme.selecttxt,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
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
        child: Text(text,style: MyStyles.white12BoldPoppingStyle),
      ),
    );
  }

}
