import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/drawer/drawer_bar.dart';
import 'package:av_discount_app/screen/dashboard/vernders.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/my_app_theme.dart';
import '../../utils/ui_helper.dart';
import 'home.dart';
import 'invoice.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
  int currentIndex = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _key,
      appBar: customAppBar(context,_key),
    //body: SafeArea(
    //child: Container(
   // height: height,
    //width: width,
    //padding: EdgeInsets.symmetric(horizontal: 15),
    //child: SingleChildScrollView(
    //child: Column(
     // children: [black30Text("Profile")],
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/user.jpg'),
            ),
            Text('Jonas Macroni',textAlign: TextAlign.center,),
            const SizedBox(height: 8),
            itemProfile( 'Contact Info',Icon(CupertinoIcons.profile_circled)),
            const SizedBox(height: 8),
            itemProfile('Wallet', Icon(Icons.wallet)),
            const SizedBox(height: 8),
            itemProfile('Invoice',Icon(CupertinoIcons.increase_indent)),
            const SizedBox(height: 8),
            itemProfile('Transaction History', Icon(Icons.transfer_within_a_station) ),
            const SizedBox(height: 8),
            itemProfile('Notification', Icon(Icons.notification_add_rounded)),
            const SizedBox(height: 8,),
            SizedBox(
            )
          ],
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
    );
  }

  itemProfile(String title, Icon iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.deepOrange.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10
            )
          ]
      ),
      child: ListTile(
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );

  }
}
