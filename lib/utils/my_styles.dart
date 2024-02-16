
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'my_app_theme.dart';

class MyFontWeight {
  static FontWeight light = FontWeight.w400;
  static FontWeight regular = FontWeight.w500;
  static FontWeight medium = FontWeight.w600;
  static FontWeight semiBold = FontWeight.bold;
  static FontWeight bold = FontWeight.w400;
  static FontWeight extraBold = FontWeight.w900;
}

class MyStyles {

  ///////////////bold////////////////
  static TextStyle white24boldStyle =  TextStyle(
      fontWeight: MyFontWeight.semiBold,
      fontSize:  24,
      color: MyAppTheme.whiteColor);

  static TextStyle white22boldStyle =  TextStyle(
      fontWeight: MyFontWeight.semiBold,
      fontSize: 22,
      color: MyAppTheme.whiteColor);

  static TextStyle white20boldStyle =  TextStyle(
      fontWeight: MyFontWeight.semiBold,
      fontSize:  20,
      color: MyAppTheme.whiteColor);

  static TextStyle white18boldStyle =  TextStyle(
      fontWeight: MyFontWeight.semiBold,
      fontSize:  18,
      color: MyAppTheme.whiteColor);

  static TextStyle white16BoldStyle =  TextStyle(
      fontWeight: MyFontWeight.bold,
      fontSize:  16,
      color: MyAppTheme.whiteColor);



  static TextStyle white12BoldStyle =  TextStyle(
      fontWeight: MyFontWeight.bold,
      fontSize:  12,
      color: MyAppTheme.whiteColor);

  /// Red

  static TextStyle red16regularStyle =  TextStyle(
      fontWeight: MyFontWeight.regular,
      fontSize:  16,
      color: MyAppTheme.redTextColor);
  static TextStyle red22BoldStyle =  TextStyle(
      fontWeight: MyFontWeight.bold,
      fontSize:  22,
      color: MyAppTheme.redTextColor);

  ///underline
  static TextStyle white14BoldUnderlineStyle =  TextStyle(
      fontWeight: MyFontWeight.bold,
      fontSize: 14,
      decoration: TextDecoration.underline,
      color: MyAppTheme.whiteColor);

  static TextStyle white16BoldUnderlineStyle =  TextStyle(
      fontWeight: MyFontWeight.bold,
      fontSize: 16,
      decoration: TextDecoration.underline,
      color: MyAppTheme.whiteColor);



  ////////////////////regular/////////////////////
  static TextStyle white16RegularStyle =  TextStyle(
      fontWeight: MyFontWeight.regular,
      fontSize:  16,
      color: MyAppTheme.whiteColor);



  ////////////////////light////////////////////////
  static TextStyle white16lightStyle =  TextStyle(
      fontWeight: MyFontWeight.light,
      fontSize:  16,
      color: MyAppTheme.whiteColor);

  static TextStyle white14lightStyle =  TextStyle(
      fontWeight: MyFontWeight.light,
      fontSize:  14,
      color: MyAppTheme.whiteColor);


  static TextStyle hintTextStyle =  TextStyle(
      fontWeight: MyFontWeight.light,
      fontSize:  14,
      color: MyAppTheme.hintTextColor);

  static TextStyle white12LightStyle =  TextStyle(
      fontWeight: MyFontWeight.light,
      fontSize:  12,
      color: MyAppTheme.whiteColor);




  static TextStyle storyContentStyle =  TextStyle(
      fontWeight: MyFontWeight.light,
      fontSize:  14,
      letterSpacing: 1.2,
      color: MyAppTheme.whiteColor);

  static TextStyle termsText12Style =  TextStyle(
      fontWeight: MyFontWeight.regular,
      fontSize:  12,
      letterSpacing: 1.2,
      color: MyAppTheme.lightPurpleTextColor);

  static TextStyle termsTextDark12Style =  TextStyle(
      fontWeight: MyFontWeight.regular,
      fontSize:  12,
      letterSpacing: 1.2,
      color: MyAppTheme.darkPurpleTextColor);

  static TextStyle termsTextDark24Style =  TextStyle(
      fontWeight: MyFontWeight.bold,
      fontSize:  24,
      letterSpacing: 1.2,
      color: MyAppTheme.darkPurpleTextColor);

  static TextStyle termsText14Style =  TextStyle(
      fontWeight: MyFontWeight.regular,
      fontSize: 14,
      letterSpacing: 1.2,
      color: MyAppTheme.lightPurpleTextColor
  );

  static TextStyle green12boldStyle =  TextStyle(
      fontWeight: MyFontWeight.bold,
      fontSize:  12,
      color: MyAppTheme.greenColor
  );




  ////////////////////Light Black /////////////////////

  ///////Bold
  static TextStyle lightBlack14BoldStyle =  TextStyle(
      fontWeight: MyFontWeight.bold,
      fontSize: 14,
      color: MyAppTheme.blackTextColor
  );

  ///////Regular
  static TextStyle lightBlack12RegularStyle =  TextStyle(
      fontWeight: MyFontWeight.regular,
      fontSize: 12,
      color: MyAppTheme.blackTextColor);

  static TextStyle lightBlack14RegularStyle =  TextStyle(
      fontWeight: MyFontWeight.regular,
      fontSize: 14,
      color: MyAppTheme.blackTextColor);

  static TextStyle lightBlack16RegularStyle =  TextStyle(
      fontWeight: MyFontWeight.light,
      fontSize: 16,
      color: MyAppTheme.blackTextColor);
  ///////////////////////////Black////////////////////

  ////Bold
  static TextStyle black16BoldStyle =  TextStyle(
      fontWeight: MyFontWeight.bold,
      fontSize: 16,
      color: MyAppTheme.blackColor);

  static TextStyle black20BoldStyle =  TextStyle(
      fontWeight: MyFontWeight.bold,
      fontSize: 20,
      color: MyAppTheme.blackColor);

  static TextStyle black30BoldStyle =  TextStyle(
      fontWeight: MyFontWeight.bold,
      fontSize: 30,
      color: MyAppTheme.blackColor);

  static TextStyle red16BoldStyle =  TextStyle(
      fontWeight: MyFontWeight.bold,
      fontSize: 16,
      color: MyAppTheme.redBtnColor);

  static TextStyle red16RegularStyle =  TextStyle(
      fontWeight: MyFontWeight.regular,
      fontSize: 16,
      color: MyAppTheme.redBtnColor);

  static TextStyle red222BoldStyle =  TextStyle(
      fontWeight: MyFontWeight.light,
      fontSize: 22,
      letterSpacing: 0.8,
      color: MyAppTheme.redBtnColor);

  static TextStyle black14BoldStyle =  TextStyle(
      fontWeight: MyFontWeight.bold,
      fontSize: 14,
      color: MyAppTheme.blackColor);

  ///Light
  static TextStyle black16LightStyle =  TextStyle(
      fontWeight: MyFontWeight.light,
      fontSize: 16,
      color: MyAppTheme.blackColor);

  static TextStyle black12LightStyle =  TextStyle(
      fontWeight: MyFontWeight.light,
      fontSize: 12,
      color: MyAppTheme.blackColor);




  /////////////////This Project ///////////////

///Black
  static TextStyle black34BoldStyle =  GoogleFonts.dmSans(
      fontWeight: MyFontWeight.light,
      fontSize: 34,
      color: MyAppTheme.blackColor);

  static TextStyle black28BoldPoppingStyle =  GoogleFonts.poppins(
      fontWeight: MyFontWeight.bold,
      fontSize: 28,
      color: MyAppTheme.blackColor);

  static TextStyle black24MediumPoppingStyle =  GoogleFonts.poppins(
      fontWeight: MyFontWeight.medium,
      fontSize: 24,
      color: MyAppTheme.blackColor);

  static TextStyle black22MediumStyle =  TextStyle(
    fontFamily: "SFCompactDisplay",
      fontWeight: MyFontWeight.medium,
      fontSize: 22,
      color: MyAppTheme.blackColor);

  static TextStyle black17RegularStyle =  TextStyle(
      fontFamily: "SFCompactDisplay",
      fontWeight: MyFontWeight.regular,
      fontSize: 17,
      color: MyAppTheme.blackColor);

  static TextStyle black17RegularPoppingStyle =  GoogleFonts.poppins(
      fontWeight: MyFontWeight.regular,
      fontSize: 17,
      color: MyAppTheme.blackColor);
  static TextStyle black16boldPoppinsStyle =  GoogleFonts.poppins(
      fontWeight: MyFontWeight.bold,
      fontSize:  16,
      letterSpacing: 0.8,
      color: MyAppTheme.blackColor);

  static TextStyle black14BoldPoppingStyle =  GoogleFonts.poppins(
      fontWeight: MyFontWeight.bold,
      fontSize: 14,
      color: MyAppTheme.blackColor);

  static TextStyle black14LightPoppingStyle =  GoogleFonts.poppins(
      fontWeight: MyFontWeight.light,
      fontSize: 14,
      color: MyAppTheme.blackColor);

  static TextStyle black14MediumPoppingStyle =  GoogleFonts.poppins(
      fontWeight: MyFontWeight.medium,
      fontSize: 14,
      color: MyAppTheme.blackColor);

  static TextStyle black10lightPoppingStyle =  GoogleFonts.poppins(
      fontWeight: MyFontWeight.light,
      fontSize: 10,
      letterSpacing: .8,
      color: MyAppTheme.blackColor);

  ///light black

  static TextStyle black12LightCMStyle =  GoogleFonts.catamaran(
      fontWeight: MyFontWeight.light,
      fontSize: 12,
      color: MyAppTheme.blackTextColor);

  static TextStyle blackLight13boldCMStyle =  GoogleFonts.catamaran(
      fontWeight: MyFontWeight.bold,
      fontSize: 13,
      color: MyAppTheme.blackTextColor);

  static TextStyle black17LightSFPtoDisplayStyle =  TextStyle(
      fontFamily: "SFProDisplay",
      fontWeight: MyFontWeight.light,
      fontSize: 17,
      color: MyAppTheme.blackTextColor
  );

  static TextStyle blackLight14LightPoppingStyle =  GoogleFonts.poppins(
      fontWeight: MyFontWeight.light,
      fontSize: 14,
      color: MyAppTheme.blackTextColor);

  static TextStyle black13LightSFPtoDisplayStyle =  TextStyle(
      fontFamily: "SFProDisplay",
      fontWeight: MyFontWeight.light,
      fontSize: 13,
      color: Colors.black.withOpacity(.6)
  );

  ///Red
  static TextStyle red14RegularStyle =  GoogleFonts.poppins(
      fontWeight: MyFontWeight.light,
      fontSize:  14,
      color: MyAppTheme.redColor
  );

  static TextStyle red16BoldQuicksandStyle =  GoogleFonts.quicksand(
      fontWeight: MyFontWeight.bold,
      fontSize:  16,
      color: MyAppTheme.redTextColor);

  static TextStyle red16MediumPoppinsStyle =  GoogleFonts.quicksand(
      fontWeight: MyFontWeight.medium,
      fontSize:  16,
      color: MyAppTheme.redTextColor);

  ///Green
  static TextStyle green12MediumStyle =  TextStyle(
      fontFamily: "SFProDisplay",
      fontWeight: MyFontWeight.medium,
      fontSize: 10,
      color: MyAppTheme.greenColor
  );
  static TextStyle green14BoldStyle =  GoogleFonts.poppins(
      fontWeight: FontWeight.bold,
      fontSize: 14,
      color: MyAppTheme.greenColor
  );

  ///Grey

  static TextStyle grey15RegularPoppingStyle =  GoogleFonts.poppins(
      fontWeight: MyFontWeight.regular,
      fontSize: 15,
      color: Colors.black.withOpacity(.33)
  );
  static TextStyle grey14RegularPoppingStyle =  GoogleFonts.poppins(
      fontWeight: MyFontWeight.regular,
      fontSize: 14,
      color: Colors.black.withOpacity(.33)
  );
  static TextStyle grey14Regular76PoppingStyle =  GoogleFonts.poppins(
      fontWeight: MyFontWeight.regular,
      fontSize: 14,
      color: Colors.black.withOpacity(.76)
  );

  static TextStyle grey14lightPoppingStyle =  GoogleFonts.poppins(
      fontWeight: MyFontWeight.light,
      fontSize: 14,
      color: MyAppTheme.greyColor);

  ///Blue

  static TextStyle blue14BoldStyle =  GoogleFonts.poppins(
      fontWeight: FontWeight.bold,
      fontSize: 14,
      color: MyAppTheme.blueTextClr
  );

  ///white

  static TextStyle white14boldStyle =  GoogleFonts.dmSans(
      fontWeight: MyFontWeight.bold,
      fontSize:  14,
      letterSpacing: 0.8,
      color: MyAppTheme.whiteColor);

  static TextStyle white16boldPoppinsStyle =  GoogleFonts.poppins(
      fontWeight: MyFontWeight.bold,
      fontSize:  16,
      letterSpacing: 0.8,
      color: MyAppTheme.whiteColor);

  static TextStyle white24MediumStyle =  GoogleFonts.poppins(
      fontWeight: MyFontWeight.medium,
      fontSize:  24,
      color: MyAppTheme.whiteColor);

  static TextStyle white12BoldPoppingStyle =  GoogleFonts.poppins(
      fontWeight: MyFontWeight.bold,
      fontSize: 12,
      color: MyAppTheme.whiteColor);

  static TextStyle white10BoldPoppingStyle =  GoogleFonts.poppins(
      fontWeight: MyFontWeight.bold,
      fontSize: 10,
      letterSpacing: .8,
      color: MyAppTheme.whiteColor);



}
