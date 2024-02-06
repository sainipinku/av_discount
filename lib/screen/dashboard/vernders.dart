import 'dart:async';

import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/drawer/drawer_bar.dart';
import 'package:av_discount_app/screen/dashboard/map.dart';
import 'package:av_discount_app/screen/dashboard/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/my_app_theme.dart';
import '../../utils/my_styles.dart';
import '../../utils/ui_helper.dart';
import 'home.dart';
import 'invoice.dart';

class Vernders extends StatefulWidget {
  const Vernders({Key? key}) : super(key: key);

  @override
  State<Vernders> createState() => _VerndersState();
}

class _VerndersState extends State<Vernders> {
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
  List banner = ['https://picsum.photos/200/300','https://picsum.photos/200/300','https://picsum.photos/200/300',];
  late PageController _controller = PageController(
      viewportFraction: banner.length == 1 ? 1 : 0.80, initialPage: 0);
  int currentIndex = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  void initState() {
    // TODO: implement initState
    _controller = PageController(initialPage: 0);
    WidgetsBinding.instance.addPostFrameCallback((_) => _animateSlider());
    super.initState();
  }
  void _animateSlider() {
    Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (currentIndex < banner.length) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }
      if (_controller.hasClients) {
        _controller.animateToPage(
          currentIndex,
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
      }
    });
  }// Create a key
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
          DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: Colors.grey,
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_literals_to_create_immutables
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20), color: Colors.grey),
                      child: TabBar(
                        indicator: BoxDecoration(
                          color: Colors.blue[800],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelColor: Colors.black,
                        dividerColor: Colors.black,
                        // ignore: prefer_const_literals_to_create_immutables
                        tabs: [
                          Tab(
                            text: 'List View',
                          ),
                          Tab(
                            text: 'Map View',
                          ),

                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        ListView(),
                        Maps(),
                        // MyPostTab(),
                        // MyReelsTab(),
                        // MyTagTab(),
                      ]),
                    )
                  ],
                ),
              ),
            ),
          ),
          ]
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
