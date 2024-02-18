
import 'package:av_discount_app/screen/dashboard/vendors/vendors_screen.dart';
import 'package:av_discount_app/screen/vendors/profile/profile.dart';
import 'package:av_discount_app/screen/vendors/vendor_home/vendor_home.dart';
import 'package:av_discount_app/screen/vendors/vendor_invoice/vendor_invoice.dart';
import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class VendorDashBoard extends StatefulWidget {
  int index;
  VendorDashBoard({Key? key,required this.index,}) : super(key: key);

  @override
  State<VendorDashBoard> createState() => _VendorDashBoardState();
}

class _VendorDashBoardState extends State<VendorDashBoard> {
  DateTime pre_backpress = DateTime.now();
  int selectedIndex = 0;
  List<Widget> screens = [
    VendorHome(),
    Vendors(),
    VendorInvoice(),
    Profile(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    selectedIndex = widget.index;
    super.initState();
  }
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final timegap = DateTime.now().difference(pre_backpress);
        final cantExit = timegap >= const Duration(seconds: 2);
        pre_backpress = DateTime.now();
        if (cantExit) {
          //show snackbar
          const snack = SnackBar(
            content: Text('Press Back button again to Exit'),
            duration: Duration(seconds: 2),
          );
          ScaffoldMessenger.of(context).showSnackBar(snack);
          return Future.value(false);
        } else {
          return Future.value(true);
        }
      },
      child:  Scaffold(
        body: screens[selectedIndex],
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
          backgroundColor: MyAppTheme.redLightColor,
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
      ),
    );
  }
}
