import 'dart:async';

import 'package:av_discount_app/common_ui/common_container.dart';
import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/drawer/drawer_bar.dart';
import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:av_discount_app/utils/my_styles.dart';
import 'package:av_discount_app/utils/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List banner = ['assets/images/Slider_01.jpg','assets/images/Slider_02.jpg','assets/images/Slider_03.jpg','assets/images/Slider_04.jpg'];
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
      appBar: customAppBar(
        context,
        _key,
        priceContainer(price: "9856")
      ),
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                black34Text("Welcome, Jessie"),
                SizedBox(
                    width: width,
                    height: height * 0.25,
                    child: Stack(
                      children: [
                        Align(alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: width,
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
                                  child: SizedBox(
                                      height: height* 0.18,
                                      width: width,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(25.0),
                                        child: Image(
                                          image: AssetImage(banner[index],),
                                          fit: BoxFit.contain,
                                      )
                                ),)
                                );

                              },
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 1.0),
                            child: SmoothPageIndicator(
                                controller: _controller,
                                count: banner.length,
                                effect:  const ExpandingDotsEffect(
                                    radius: 8,
                                    spacing: 8,
                                    dotHeight: 8,
                                    dotWidth: 8,
                                    dotColor: Colors.black45,
                                    activeDotColor: Colors.black,
                                )
                            ),
                          ),
                        )
                      ],
                    )
                ),
                Text("Recent Purchases",style: MyStyles.red222BoldStyle,),

                const SizedBox(height: 10,),

                Row(
                  children: [
                    Padding(padding: const EdgeInsets.symmetric(vertical: 10),child: storePreviewContainer(
                        context: context,
                        img: "assets/images/imggg.png", name: "Poojara Fashions", location: "Vashali Nagar"),),
                    const SizedBox(width: 5,),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 10),child: storePreviewContainer(
                        context: context,
                        img: "assets/images/imggg.png", name: "Poojara Fashions", location: "Vashali Nagar"),),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    red22BoldText("All shops"),
                    Row(
                      children: [
                        red16RegularText("See All"),
                        const SizedBox(width: 5,),
                        Icon(Icons.arrow_forward,size: 18,color: MyAppTheme.redColor),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 5,),

                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 5,
                    childAspectRatio: 0.9,
                  ),
                  itemCount: 50,
                  itemBuilder: (context, index) => storePreviewContainer(
                      context: context,
                      img: "assets/images/imggg.png", name: "Poojara Fashions", location: "Vashali Nagar"),)
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
