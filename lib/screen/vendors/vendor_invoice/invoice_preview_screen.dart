import 'package:flutter/material.dart';

class InvoicePreviewScreen extends StatelessWidget {
  const InvoicePreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
        ),
        backgroundColor: const Color(0xffF6F6F9),
        body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Center(
                    child: Text('Invoice',
                      style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: Color(0xffFD1755)),)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     SizedBox(
                       width: width*.45,
                       child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Poojara Fashions',
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff306180)),),
                          SizedBox(height: 5,),
                          Text("Arya Nagar, Murlipura JaipurArya Nagar, Murlipura JaipurArya Nagar, Murlipura JaipurArya Nagar, Murlipura Jaipur",
                            style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: Colors.black),),
                          Text("+91 875474855",
                            style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: Colors.black),),
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
                          Text('Bill to',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.black),),
                          Text('Deepak Choudhary',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff306180)),),
                          Text('+91 875474855',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: Colors.black),),
                          Text('deepak@gmail.com',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: Colors.black),)
                        ],),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('#0154655',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w700,color: Color(0xff6C6C6C)),),
                        Text('26 Jan 2024',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w700,color: Color(0xff6C6C6C)),)
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
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex: 5,
                          child: Text('Black T-Shirt',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12,color: Colors.black),)),
                      Expanded(
                          flex: 2,
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Text('300',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12,color: Colors.black),))),
                      Expanded(
                          flex:2,child:
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text('10%',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12,color: Colors.black),))),
                      Expanded(
                          flex: 2,
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Text('270',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12,color: Colors.black),))),
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
        )
    );
  }
}
