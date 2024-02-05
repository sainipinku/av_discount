import 'package:flutter/material.dart';


class DrawerBar extends StatefulWidget {
  BuildContext buildContext;
  DrawerBar({Key? key,required this.buildContext}) : super(key: key);

  @override
  State<DrawerBar> createState() => _DrawerBarState();
}

class _DrawerBarState extends State<DrawerBar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      color: Colors.white,
      child: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white, //This will change the drawer background to blue.
          //other styles
        ),
        child: Drawer(

        ),
      ),
    );
  }
}


