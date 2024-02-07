import 'package:av_discount_app/screen/dashboard/profile.dart';
import 'package:av_discount_app/screen/dashboard/vernders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common_ui/globle_ui.dart';
import '../../drawer/drawer_bar.dart';
import '../../utils/my_app_theme.dart';
import '../../utils/ui_helper.dart';
import 'home.dart';
import 'invoice.dart';
class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  int selectedIndex = 0;
  List<Widget> screens = [
    Home(),
    Vernders(),
    Invoice(),
    Profile(),
  ];
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
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                black30Text("Wallet"),
                Container(
                  width: 400,
                  height: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Wallet.png",),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

              Container(
                margin: EdgeInsets.all(18.0),
                padding: EdgeInsets.all(10.0),
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(8),
                    color:Colors.grey
                ),
                child: Text("Poojara Fashion",style: TextStyle(color:Colors.black,fontSize:15),),
              ),
              Container(
                margin: EdgeInsets.all(18.0),
                padding: EdgeInsets.all(10.0),
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(8),
                    color:Colors.grey
                ),
                child: Text("Poojara Fashion",style: TextStyle(color:Colors.black,fontSize:15),),
              ),
              Container(
                margin: EdgeInsets.all(18.0),
                padding: EdgeInsets.all(10.0),
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(8),
                    color:Colors.grey
                ),
                child: Text("Poojara Fashion",style: TextStyle(color:Colors.black,fontSize:15),),

          ),

              ],
            ),
          ),
        ),
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
      drawer: DrawerBar(
        buildContext: context,
      ),
    );

  }
}
