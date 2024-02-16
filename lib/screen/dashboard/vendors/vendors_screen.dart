import 'dart:async';

import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/drawer/drawer_bar.dart';
import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:av_discount_app/utils/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Vendors extends StatefulWidget {
  const Vendors({Key? key}) : super(key: key);

  @override
  State<Vendors> createState() => _VendorsState();
}

class _VendorsState extends State<Vendors> {
  int selectedIndex = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
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
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              black34Text('All vendors'),
              const SizedBox(height: 10,),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: MyAppTheme.btnDisColor,
                ),
                child: Row(
                  children: [
                    Expanded(child:  secondBtn(text: "List View",
                        enble: selectedIndex==0 ?"Yes":"",
                        onTap: (){
                          selectedIndex = 0;
                          setState(() {

                          });
                        })),
                    Expanded(child: secondBtn(text: "Map View",
                        enble: selectedIndex==1 ?"Yes":"",
                        onTap: (){
                          selectedIndex = 1;
                          setState(() {

                          });
                        }),)

                  ],
                ),
              ),
              const SizedBox(height: 25,),

              selectedIndex==0 ?
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 29,
                  childAspectRatio: 0.9,
                ),
                itemCount: 50,
                itemBuilder: (context, index) => storePreviewContainer(
                    context: context,
                    img: "assets/images/imggg.png", name: "Poojara Fashions", location: "Vashali Nagar"),):
                 /* Container(
                    height: height * 0.30,
                    child: GoogleMap(
                      mapType: MapType.hybrid,
                      initialCameraPosition: _kGooglePlex,
                      onMapCreated: (GoogleMapController controller) {
                        _controller.complete(controller);
                      },
                    )*/
                    const Image(
                      image: AssetImage("assets/images/map_img.jpg"),
                    ),

          
            ]
          ),
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
