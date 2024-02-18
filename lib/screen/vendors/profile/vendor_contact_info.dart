/*
import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/drawer/drawer_bar.dart';
import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:av_discount_app/utils/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _key,
      backgroundColor: MyAppTheme.whiteColor,
      body: SafeArea(
        child: Container(
          color: MyAppTheme.whiteColor,
          height: height,
          width: width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              black30Text(
                'ContactInfo',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: (height * 0.14),
                            width: width*.5,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle
                            ),
                            child: Image(
                            image: AssetImage('assets/images/profile.png'),)
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.edit
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      black20Text(
                        'Jonas Macroni',
                      ),

                    ],
                  ),
                ],
              ),
        
              const SizedBox(height: 20,),
        
        
            ],
          ),
        ),
      ),
      drawer: DrawerBar(
        buildContext: context,
      ),
    );
  }
}

class CustomRectangle extends StatelessWidget {
  final String icon;
  final String text;
  final VoidCallback? onTap;
  const CustomRectangle({Key? key, required this.icon,this.onTap, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? (){},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        margin: const EdgeInsets.symmetric(vertical: 5,),
        decoration: BoxDecoration(
          color: MyAppTheme.whiteColor,
          borderRadius: BorderRadius.circular(4),
          boxShadow:  [
            BoxShadow(
              color: MyAppTheme.greyColor,
              offset: const Offset(5, 5),
              blurRadius: 10,
              spreadRadius: -2,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                //Icon(Icons.navigate_next),
                svgImage(img: icon),
                black16Text(text),
              ],
            ),
            const Icon(Icons.navigate_next)
          ],
        ),
      ),
    );
  }
}
*/


import 'package:av_discount_app/utils/helpers/textfields.dart';
import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:av_discount_app/utils/my_styles.dart';
import 'package:av_discount_app/utils/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VendorContactInfo extends StatefulWidget {
  const VendorContactInfo({super.key});

  @override
  State<VendorContactInfo> createState() => _VendorContactInfoState();
}

class _VendorContactInfoState extends State<VendorContactInfo> {
  bool isEditable = false;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController storeNameController = TextEditingController();
  final TextEditingController registrationController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController ownerPhNumController = TextEditingController();
  final TextEditingController storePhNumController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    nameController.text = "Jack";
    storeNameController.text = "New World";
    registrationController.text = "5 Sep 1999";
    emailController.text = "jack@gmail.com";
    ownerPhNumController.text = "-";
    storePhNumController.text = "-";
    addressController.text = "-";

    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: const Icon(CupertinoIcons.back)),
                    Align(
                        alignment: Alignment.center,
                        child: black16Text('Contact info',))
                  ],
                ),
                const SizedBox(height: 20,),
                InkWell(
                  onTap: (){

                  },
                  child: CircleAvatar(
                    radius: height*0.07,
                    child: Container(
                      height: height*0.14,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/profile.png',
                          ),
                          opacity: .6
                        ),
                        color: MyAppTheme.greyColor,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.edit_outlined,color: MyAppTheme.white,),
                    ),
                  ),
                ),

                textField(controller: nameController, title: "Owner Name"),
                textField(controller: storeNameController, title: "Store Name"),
                textField(controller: registrationController, title: "Registration Date"),
                textField(controller: emailController, title: "Email"),
                textField(controller: ownerPhNumController, title: "Owner Phone Number",changeBtn:false),
                textField(controller: storePhNumController, title: "Store Phone Number",changeBtn:false),
                textField(controller: addressController, title: "Address",changeBtn:false),

              ],
            ),
          ),
        ),
      ),

    );
  }


textField({
  required TextEditingController controller,
  required String title,
  bool? changeBtn=true
}){
  return Container(
    decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
              color: MyAppTheme.blackColor,
            )
        )
    ),
    child: Row(
      children: [
        Expanded(
          flex: 4,
          child: noLineTextField(
            controller: controller,
            title: title,
            isEditable: isEditable,
          ),
        ),
        Expanded(
          flex: (changeBtn == true) ?1 :0,
          child: (changeBtn == true) ? InkWell(
              onTap: (){
                print("Editing");
                isEditable = true;
                setState(() {
                });
              },
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10,),
                  child: Text('Change',style: MyStyles.green12MediumStyle,),
              ),
          ):const SizedBox.shrink(),
        )
      ],
    ),
  );
}
}