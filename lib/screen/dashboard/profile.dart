import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/drawer/drawer_bar.dart';
import 'package:av_discount_app/screen/dashboard/vernders.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            itemProfile( 'Contact Info','03107085816', Icons.wallet),
            const SizedBox(height: 8),
            itemProfile('Phone', '03107085816', Icons.wallet),
            const SizedBox(height: 8),
            itemProfile('Address', 'abc address, xyz city', CupertinoIcons.location),
            const SizedBox(height: 8),
            itemProfile('Email', 'ahadhashmideveloper@gmail.com', CupertinoIcons.mail),
            const SizedBox(height: 8),
            itemProfile('Email', 'ahadhashmideveloper@gmail.com', CupertinoIcons.mail),
            const SizedBox(height: 8,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Text('Edit Profile')
              ),
            )
          ],
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
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
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
}
