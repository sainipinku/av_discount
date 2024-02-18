import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:av_discount_app/utils/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class InvoicePreviewScreen extends StatefulWidget {
  const InvoicePreviewScreen({super.key});

  @override
  State<InvoicePreviewScreen> createState() => _InvoicePreviewScreenState();
}

class _InvoicePreviewScreenState extends State<InvoicePreviewScreen> {
  int selectedIndex = 2;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return  Scaffold(
        key: _key,
        appBar: customAppBar(context,_key),
        backgroundColor: const Color(0xffF6F6F9),
        body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Center(
                    child: Text('Invoice',
                      style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Color(0xffFD1755)),)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     SizedBox(
                       width: width*.45,
                       child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Poojara Fashions',
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Color(0xff306180)),),
                          SizedBox(height: 5,),
                          Text("Arya Nagar, Murlipura \n jaipur",
                            style: TextStyle(fontFamily : "assets/fonts/Poppins",fontWeight: FontWeight.w400,fontSize: 12,color: Colors.black),),
                          Text("+91 875474855",
                            style: TextStyle(fontFamily : "assets/fonts/Poppins",fontWeight: FontWeight.w400,fontSize: 10,color: Colors.black),),
                        ],
                                           ),
                     ),
                    Image.asset('assets/images/splash.png',height: 57,)
                  ],
                ),

                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: width*.45,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bill to',style: TextStyle(fontFamily : "assets/fonts/Poppins",fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),),
                          Text('Deepak Choudhary',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff306180)),),
                          Text('+91 875474855',style: TextStyle(fontFamily : "assets/fonts/Poppins",fontWeight: FontWeight.w400,fontSize: 12,color: Colors.black),),
                          Text('deepak@gmail.com',style: TextStyle(fontFamily : "assets/fonts/Poppins",fontWeight: FontWeight.w400,fontSize: 12,color: Colors.black),)
                        ],),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('#0154655',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Color(0xff6C6C6C)),),
                        Text('26 Jan 2024',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Color(0xff6C6C6C)),)
                      ],
                    )
                  ],),
                const SizedBox(height: 40,),
                const Divider(
                  thickness: 2,
                  color: Color(0xff1EABAB),
                ),
                Container(
                  width: width,
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                            color: Color(0xff7E7E7E),
                          )
                      )
                  ),
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text('Products',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black),),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.only(bottom: 10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xff7E7E7E),
                      )
                    )
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex: 5,
                          child: Text('Product Name',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12,color: Colors.black),)),
                      Expanded(
                          flex: 2,
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Text('Rate',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12,color: Colors.black),))),
                      Expanded(
                          flex:2,child:
                          Align(
                            alignment: Alignment.centerRight,
                              child: Text('Discount',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12,color: Colors.black),))),
                      Expanded(
                          flex: 2,
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Text('Total',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12,color: Colors.black),))),
                    ],
                  ),
                ),

                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.only(bottom: 10),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                            color: Color(0xff7E7E7E),
                          )
                      )
                  ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex: 5,
                          child: Text('Black T-Shirt',style: MyStyles.invoicetextcolor,)),
                      Expanded(
                          flex: 2,
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Text('300',style: MyStyles.invoicetextcolor,))),
                      Expanded(
                          flex:2,child:
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text('10%',style: MyStyles.invoicetextcolor,))),
                      Expanded(
                          flex: 2,
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Text('270',style: MyStyles.invoicetextcolor,))),
                    ],
                  ),
                ),),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: width*.4,
                      margin: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Subtotal',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.black),),
                              Text('₹ 340',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black),),
                            ],),
                          const SizedBox(height: 10,),
                          Container(
                            width: double.infinity,
                            height: 1,
                            color: const Color(0xff7E7E7E),
                          ),
                          const SizedBox(height: 10,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Discount',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.black),),
                              Text('10%',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black),),


                            ],),
                          const SizedBox(height: 10,),
                          Container(
                            width: double.infinity,
                            height: 1,
                            color: const Color(0xff7E7E7E),
                          ),
                          const SizedBox(height: 10,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Total',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.black),),
                              Text('₹ 300',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black),),


                            ],),
                        ],),
                    ),
                  ],
                )


              ],),
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
              label: 'Users',
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
          backgroundColor: MyAppTheme.redLightColor,
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
