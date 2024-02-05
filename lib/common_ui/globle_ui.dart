import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar customAppBar(BuildContext context,GlobalKey<ScaffoldState> key) {
  return AppBar(
    elevation: 0,
    automaticallyImplyLeading: false,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            key.currentState!.openDrawer();
          }, // Image tapped
          child: Image.asset('assets/images/menu.png',width: 20,height: 15,color: Colors.black),
        ),
        SvgPicture.asset(
          'assets/icons/logo_white.svg',
          allowDrawingOutsideViewBox: true,

        ),
        GestureDetector(
          onTap: () {

          }, // Image tapped
          child: Container(
            height: 27,
            width: 25,
            alignment: Alignment.center,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SvgPicture.asset(
                    'assets/icons/notification.svg',
                    height: 20,
                    width: 20,
                    allowDrawingOutsideViewBox: true,
                    color: Colors.black,
                  ),
                )
                ,

              ],
            ),
          ),
        ),

      ],

    ),
    backgroundColor: Colors.white,
  );
}