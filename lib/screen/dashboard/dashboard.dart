
import 'package:av_discount_app/screen/dashboard/invoice/invoice.dart';
import 'package:av_discount_app/screen/dashboard/profile/profile.dart';
import 'package:av_discount_app/screen/dashboard/vendors/vendor_profile.dart';
import 'package:av_discount_app/screen/dashboard/vendors/vendors_screen.dart';
import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home/home.dart';


class DashBoard extends StatefulWidget {
  int inndex;
  DashBoard({Key? key,required this.inndex}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  DateTime pre_backpress = DateTime.now();
  int selectedIndex = 0;
  List<Widget> screens = [
    Home(),
    Vendors(),
    Invoice(),
    Profile(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    selectedIndex = widget.inndex;
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
          backgroundColor: MyAppTheme.btnColor,
          selectedLabelStyle:  TextStyle(
            fontWeight: FontWeight.w400,
            height: 1.5,
            fontSize: 13,
            color: MyAppTheme.selecttxt,
          ),
          type: BottomNavigationBarType.fixed,
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            height: 1.5,
            fontSize: 13,
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
