import 'package:av_discount_app/main.dart';
import 'package:av_discount_app/screen/dashboard/vendors/vendor_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'constants.dart';
import 'my_app_theme.dart';
import 'my_icons.dart';
import 'my_images.dart';
import 'my_styles.dart';

Widget svgImage({required String img, double? height, double? width, Color? color,double? scaleFactor}) {
  return Transform.scale(
    scale: scaleFactor??1,
    child: SvgPicture.asset(
      img,
      height: height ?? 24,
      width: width ?? 24,
      fit: BoxFit.scaleDown,
      color: color,
    ),
  );
}

Widget imgImage({required String img, double? height, double? width, Color? color,double? scaleFactor}) {
  return Transform.scale(
    scale: scaleFactor??1,
    child: Image.asset(
      img,
      height: height ?? 24,
      width: width ?? 24,
      fit: BoxFit.scaleDown,
      color: color,
    ),
  );
}


backBtn({
  required BuildContext context,
  VoidCallback? onTap
}) {
  return GestureDetector(
      onTap: onTap ??() {
        Navigator.pop(context);
      },
      child: Container(
          decoration: BoxDecoration(
              color: MyAppTheme.containerFillingColor,
              borderRadius: BorderRadius.circular(10)
          ),
          padding: EdgeInsets.all(8),
          child: svgImage(
            img: MyIcons.backArrowIc,
          )));
}


mainBtn({
  required String text,
  required String enble,
  required VoidCallback onTap,
  double? height,
  double? width,
  required Color clr,
  Widget? icon,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      //height: height ?? 56,
      padding: const EdgeInsets.symmetric(vertical:10),
      width: width ?? double.infinity,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration : BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: enble.isNotEmpty ? clr : MyAppTheme.btnDisColor
      ),
      child: (icon != null) ?
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          white16BoldText(text),
          const SizedBox(width: 5,),
          icon,
        ],)
          : Text(text,style:enble.isNotEmpty ? MyStyles.white24MediumStyle: MyStyles.black24MediumPoppingStyle)
    ),
  );
}

secondBtn({
  required String text,
  required String enble,
  required VoidCallback onTap,
  double? height,
  double? width,
  Widget? icon,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      //height: height ?? 56,
      padding: const EdgeInsets.symmetric(vertical:10),
      width: width ?? double.infinity,
      alignment: Alignment.center,
      decoration : BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: enble.isNotEmpty ? MyAppTheme.btnColor : MyAppTheme.btnDisColor
      ),
      child: (icon != null) ?
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text,style: MyStyles.white16boldPoppinsStyle,),
          const SizedBox(width: 5,),
          icon,
        ],)
          :Text(text, style:enble.isNotEmpty ? MyStyles.white16boldPoppinsStyle: MyStyles.black16boldPoppinsStyle,)
    ),
  );
}


drawerTile({VoidCallback? onTap,required String icon,required String title}){
  return GestureDetector(
    onTap: onTap,
    child: Container(
      color: Colors.transparent,
      width: double.infinity,
      padding:  EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          svgImage(img: icon),
          SizedBox(width: 10,),
          normalText(title)
        ],
      ),
    ),
  );
}


storePreviewContainer({
  required BuildContext context,
  required String img,
  required String name,
  required String location,
}){
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder:(context) =>  VendorsProfile()));
    },
    child: SizedBox(
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(img,fit: BoxFit.cover,),
              Text(name,style: MyStyles.black14BoldPoppingStyle,),
              Row(
                children: [
                  const Icon(Icons.location_on_outlined,size: 15),
                  Expanded(child: Text(location,style: MyStyles.black10lightPoppingStyle,)),
                ],
              ),
            ],
          ),
          Positioned(
            top: 10,
            right: 20,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: MyAppTheme.redLightColor,
                  shape: BoxShape.circle
              ),
              child: Text("4.3",style: MyStyles.white10BoldPoppingStyle,),
            ),
          ),
        ],
      ),
    ),
  );
}

priceContainer({
  required String price,
  String? type
}){
  return InkWell(
    onTap: (){

    },
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
      margin: const EdgeInsets.symmetric(horizontal: 8,),
      decoration: BoxDecoration(
          color: (type == null) ? MyAppTheme.blueTextClr : MyAppTheme.redLightColor,
          borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/cart.png",
            height: 22,
            width: 22,
            color: Colors.white,
          ),
          const SizedBox(width: 8,),
          white14BoldText(price)
        ],
      ),
    ),
  );
}

/////////////////Flutter Toast////////////////////////////

msgToast({required String msg}) {
  return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: MyAppTheme.gradient1btn,
      textColor: Colors.white,
      fontSize: 12.0);
}

//////////////////Text helpers////////////////////////////
Text white20boldText(String text,{TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: MyStyles.white20boldStyle,
  );
}

Text white18boldText(String text,{TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: MyStyles.white18boldStyle,
  );
}

Text white16regularText(String text) {
  return Text(
    text,
    style: MyStyles.white16RegularStyle,
  );
}

Text white16BoldText(String text) {
  return Text(
    text,
    style: MyStyles.white16BoldStyle,
  );
}

Text white16ExtraBoldText(String text) {
  return Text(
    text,
    style: MyStyles.white16RegularStyle,
  );
}

Text normalText(String text,{TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: MyStyles.white14lightStyle,
  );
}



Text white12LightText(String text,{TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: MyStyles.white12LightStyle,
  );
}

Text white12DarkText(String text) {
  return Text(
    text,
    style: MyStyles.white12BoldStyle,
  );
}




Text termsTextDark12Text(String text) {
  return Text(
    text,
    style: MyStyles.termsTextDark12Style,
  );
}
Text termsTextLight12Text(String text) {
  return Text(
    text,
    style: MyStyles.termsText12Style,
  );
}
Text termsText14Text(String text) {
  return Text(
    text,
    style: MyStyles.termsText14Style,
  );
}


/////// Red Text

Text red16RegularText(String text) {
  return Text(
    text,
    style: MyStyles.red16regularStyle,
  );
}
Text red22BoldText(String text) {
  return Text(
    text,
    style: MyStyles.red22BoldStyle,
  );
}

///////////////// Dark Black //////////////////////////
Text black14DarkText(String text) {
  return Text(
    text,
    style: MyStyles.black14BoldStyle,
  );
}


///////////////// Black //////////////////////////

Text black16Text(String text) {
  return Text(
    text,
    style: MyStyles.black16BoldStyle,
  );
}
Text black20Text(String text) {
  return Text(
    text,
    style: MyStyles.black20BoldStyle,
  );
}


Text black14Text(String text) {
  return Text(
    text,
    style: MyStyles.black14BoldStyle,
  );
}
Text black22Text(String text) {
  return Text(
    text,
    style: MyStyles.black22MediumStyle,
  );
}


///// black light


Text blackLight12Text(String text) {
  return Text(
    text,
    style: MyStyles.black12LightStyle,
  );
}
Text blackLight14Text(String text) {
  return Text(
    text,
    style: MyStyles.lightBlack14RegularStyle,
  );
}
Text blackLight16Text(String text) {
  return Text(
    text,
    style: MyStyles.black16LightStyle,
  );
}



////////////////This project

Text black34Text(String text) {
  return Text(
    text,
    style: MyStyles.black34BoldStyle,
  );
}

Text black17PoppinsText(String text) {
  return Text(
    text,
    style: MyStyles.black17RegularPoppingStyle,
  );
}

Text blackLight17SFProDisplayText(String text) {
  return Text(
    text,
    style: MyStyles.black17LightSFPtoDisplayStyle,
  );
}

Text white14BoldText(String text,{TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: MyStyles.white14boldStyle,
  );
}
