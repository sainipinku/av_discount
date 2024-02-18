import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/drawer/drawer_bar.dart';
import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:av_discount_app/utils/my_styles.dart';
import 'package:av_discount_app/utils/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int selectedIndex = 3;
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  } // Create a key
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _key,
      appBar: customAppBar(
          context,
          _key,
          priceContainer(price: "9856", type: "type")
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Transaction History',style: MyStyles.red34BoldStyle,),
              Text(
                "Today, 14 Jan 2023",
                style: MyStyles.blue14BoldStyle,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  var isNegative = true;
                  return Container(
                    padding: const EdgeInsets.only(bottom: 20,top: 15),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: MyAppTheme.blackColor
                            )
                        )
                    ), child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Poojara Fashions",style: MyStyles.black14BoldPoppingStyle,),
                        const SizedBox(height: 5,),
                        Text("ID: GHFI4684JH82d",style:  MyStyles.grey14lightPoppingStyle,)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        isNegative ? Text("+ 125.50",style: MyStyles.green14BoldStyle,) :
                        Text("- 125.50",style: MyStyles.red14RegularStyle,) ,
                        const SizedBox(height: 5,),
                        Text("09:15 AM",style:  MyStyles.grey14lightPoppingStyle,)
                      ],
                    ),
                  ],
                ));
                },
              ),
              const SizedBox(height: 20,),
              Text(
                "Monday, 12 Jan 2023",
                style: MyStyles.blue14BoldStyle,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  var isNegative = false;
                  return Container(
                      padding: const EdgeInsets.only(bottom: 20,top: 15),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: MyAppTheme.blackColor
                              )
                          )
                      ), child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Poojara Fashions",style: MyStyles.black14BoldPoppingStyle,),
                          const SizedBox(height: 5,),
                          Text("ID: GHFI4684JH82d",style:  MyStyles.grey14lightPoppingStyle,)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          isNegative ? Text("+ 125.50",style: MyStyles.green14BoldStyle,) :
                          Text("- 125.50",style: MyStyles.red14RegularStyle,) ,
                          const SizedBox(height: 5,),
                          Text("09:15 AM",style:  MyStyles.grey14lightPoppingStyle,)
                        ],
                      ),
                    ],
                  ));
                },
              ),
            ],
          ),
        ),
      ),
      drawer: DrawerBar(
        buildContext: context,
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
        selectedLabelStyle:  GoogleFonts.catamaran(
          fontWeight: FontWeight.w500,
          height: 1.5,
          fontSize: 13,
          color: MyAppTheme.selecttxt,
        ),
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: GoogleFonts.catamaran(
          fontWeight: FontWeight.w500,
          height: 1.5,
          fontSize: 12,
          color: Colors.white,
        ),
        selectedItemColor: MyAppTheme.selecttxt,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );

  }
}
