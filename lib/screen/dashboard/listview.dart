import 'package:av_discount_app/screen/dashboard/profile.dart';
import 'package:av_discount_app/screen/dashboard/vernders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common_ui/globle_ui.dart';
import '../../drawer/drawer_bar.dart';
import '../../utils/my_app_theme.dart';
import '../../utils/my_styles.dart';
import '../../utils/ui_helper.dart';
import 'home.dart';
import 'invoice.dart';
class ListViews extends StatefulWidget {
  const ListViews({super.key});

  @override
  State<ListViews> createState() => _ListViewState();
}

class _ListViewState extends State<ListViews> {
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
  final GlobalKey<ScaffoldState> _key = GlobalKey();
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
                black30Text("All vendors"),
    Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/imggg.png'),
            Text("pooja collection",style: MyStyles.black14BoldStyle,),
            Text("Vashali Nagar",style: MyStyles.black14BoldStyle,),
          ],
        ),
        SizedBox(width: 5,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/imggg.png'),
            Text("pooja collection",style: MyStyles.black14BoldStyle,),
            Text("Vashali Nagar",style: MyStyles.black14BoldStyle,),
          ],
        )
      ],
    ),
    SizedBox(height: 10,),
    Row(

    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text("All Shops",style: MyStyles.red16BoldStyle,),
    Text("See All",style: MyStyles.red16BoldStyle,),
    ],
    ),
    SizedBox(height: 10,),
    Row(
    children: [
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Image.asset('assets/images/imggg.png'),
    Text("pooja collection",style: MyStyles.black14BoldStyle,),
    Text("Vashali Nagar",style: MyStyles.black14BoldStyle,),
    ],
    ),
    SizedBox(width: 5,),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Image.asset('assets/images/imggg.png'),
    Text("pooja collection",style: MyStyles.black14BoldStyle,),
    Text("Vashali Nagar",style: MyStyles.black14BoldStyle,),
    ],
    )
    ],
    ),
    SizedBox(height: 10,),
    Row(
    children: [
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Image.asset('assets/images/imggg.png'),
    Text("pooja collection",style: MyStyles.black14BoldStyle,),
    Text("Vashali Nagar",style: MyStyles.black14BoldStyle,),
    ],
    ),
    SizedBox(width: 5,),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Image.asset('assets/images/imggg.png'),
    Text("pooja collection",style: MyStyles.black14BoldStyle,),
    Text("Vashali Nagar",style: MyStyles.black14BoldStyle,),
    ],
    )
    ],
    ),
    SizedBox(height: 10,),
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
