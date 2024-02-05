import 'dart:async';

import 'package:av_discount_app/common_ui/common_container.dart';
import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/drawer/drawer_bar.dart';
import 'package:av_discount_app/utils/my_styles.dart';
import 'package:av_discount_app/utils/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List banner = ['https://picsum.photos/200/300','https://picsum.photos/200/300','https://picsum.photos/200/300',];
  late PageController _controller = PageController(
      viewportFraction: banner.length == 1 ? 1 : 0.80, initialPage: 0);
  int currentIndex = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
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
  }
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
                black30Text("Welcome, Jessie"),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Stack(
                    children: [
                      SizedBox(
                        width:
                        MediaQuery.of(context).size.width,
                        child: PageView.builder(
                          controller: _controller,
                          padEnds: false,
                          onPageChanged: (value) {
                            setState(() {
                              currentIndex = value;
                            });
                          },
                          itemCount: banner.length,
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {

                              },
                              child:  SizedBox(
                                  height: MediaQuery.of(context)
                                      .size
                                      .height *
                                      0.20,
                                  width: MediaQuery.of(context)
                                      .size
                                      .width,
                                  child: ClipRRect(
                                    borderRadius:
                                    BorderRadius.circular(
                                        5.0),
                                    child: Center(
                                        child: FadeInImage(
                                          image: NetworkImage(
                                              banner[index]),
                                          fit: BoxFit.fill,
                                          width:
                                          MediaQuery.of(context)
                                              .size
                                              .width,
                                          height:
                                          MediaQuery.of(context)
                                              .size
                                              .height *
                                              0.20,
                                          placeholder: const AssetImage(
                                              "assets/images/tennis_ball_banner_placeholder.png"),
                                          imageErrorBuilder:
                                              (context, error,
                                              stackTrace) {
                                            return Image.asset(
                                              "assets/images/tennis_ball_banner_placeholder.png",
                                            );
                                          },
                                        )),
                                  )),
                            );

                          },
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 2.0),
                          child: SmoothPageIndicator(
                              controller: _controller,
                              count: banner.length,
                              effect:  const ExpandingDotsEffect(
                                  radius: 8,
                                  spacing: 8,
                                  dotHeight: 8,
                                  dotWidth: 8,
                                  dotColor: Colors.black45,
                                  activeDotColor: Colors.black
                              )
                            /* const ScrollingDotsEffect(
                                                              radius: 8,
                                                              spacing: 8,
                                                              dotHeight: 8,
                                                              dotWidth: 8,
                                                              activeDotColor: MyAppTheme.MainColor)*/),
                        ),
                      )
                    ],
                  )
                ),
                Text("Recent Purchases",style: MyStyles.red16BoldStyle,),
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
      drawer: DrawerBar(
        buildContext: context,
      ),
    );
  }
}
