import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/drawer/drawer_bar.dart';
import 'package:flutter/material.dart';

class Vernders extends StatefulWidget {
  const Vernders({Key? key}) : super(key: key);

  @override
  State<Vernders> createState() => _VerndersState();
}

class _VerndersState extends State<Vernders> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _key,
      appBar: customAppBar(context,_key),
      body: Center(
        child: Text('Vernders'),
      ),
      drawer: DrawerBar(
        buildContext: context,
      ),
    );

  }
}
