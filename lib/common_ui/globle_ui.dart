import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar customAppBar(
    BuildContext context,
    GlobalKey<ScaffoldState> key,
    [Widget? widget]
    ) {
  return AppBar(
    backgroundColor: MyAppTheme.backgroundClr,
    elevation: 0,
    automaticallyImplyLeading: false,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            key.currentState!.openDrawer();
          }, // Image tapped
          child: Transform.scale(
              scale: 1.5,
              child: Image.asset('assets/images/menu.png',width: 20,height: 15,color: Colors.black)),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            widget ?? const SizedBox.shrink(),
            GestureDetector(
              onTap: () {}, // Image tapped
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
                        height: 30,
                        width: 30,
                        allowDrawingOutsideViewBox: true,
                        color: Colors.red,
                      ),
                    )
                    ,

                  ],
                ),
              ),
            ),
          ],
        ),

      ],

    ),
  );
}