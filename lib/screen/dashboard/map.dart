import 'dart:async';
import 'package:av_discount_app/screen/dashboard/profile.dart';
import 'package:av_discount_app/screen/dashboard/vernders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../common_ui/globle_ui.dart';
import '../../drawer/drawer_bar.dart';
import '../../utils/my_app_theme.dart';
import '../../utils/ui_helper.dart';
import 'home.dart';
import 'invoice.dart';
class Maps extends StatefulWidget {
  const Maps({super.key});

  @override
  State<Maps> createState() => _MapState();
}

class _MapState extends State<Maps> {
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
  Completer<GoogleMapController> _controller = Completer();

  // in the below line, we are specifying our camera position
  static const CameraPosition _kGoogle = CameraPosition(
    target: LatLng(37.42796133580664, -122.885749655962),
    zoom: 14.4746,
  );
  final List<Marker> _markers = <Marker>[
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(20.42796133580664, 75.885749655962),
        infoWindow: InfoWindow(
          title: 'My Position',
        )
    ),
  ];

  // created method for getting user current location
  @override
  Widget build(BuildContext context) {
   // var width = MediaQuery.of(context).size.width;
   // var height = MediaQuery.of(context).size.height;
    return Scaffold(
       // key: _key,
      backgroundColor: Color(0xFF0F9D58),
        appBar: customAppBar(context,_key),

        body: Container(
          // in the below line, creating google maps.
          child: GoogleMap(
            // in the below line, setting camera position
            initialCameraPosition: _kGoogle,
            // in the below line, specifying map type.
            mapType: MapType.normal,
            // in the below line, setting user location enabled.
            myLocationEnabled: true,
            // in the below line, setting compass enabled.
            compassEnabled: true,
            // in the below line, specifying controller on map complete.
            onMapCreated: (GoogleMapController controller){
              _controller.complete(controller);
            },
          ),
        ),
      //body: screens[selectedIndex],
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
