
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'my_app_theme.dart';

class MyFontWeight {
  static FontWeight light = FontWeight.w400;
  static FontWeight regular = FontWeight.w500;
  static FontWeight medium = FontWeight.w600;
  static FontWeight semiBold = FontWeight.bold;
  static FontWeight bold = FontWeight.w800;
  static FontWeight bbold = FontWeight.w700;
  static FontWeight extraBold = FontWeight.w900;
}

class MyStyles {

  static TextStyle underLineSubHeading = TextStyle(
      fontSize:  14,
      color: MyAppTheme.whiteColor,
      fontWeight: MyFontWeight.regular,
      decoration: TextDecoration.underline,
      decorationColor: MyAppTheme.whiteColor);


  static TextStyle underLine18Style = TextStyle(
      fontSize:  18,
      color: MyAppTheme.whiteColor,
      fontWeight: MyFontWeight.bold,
      decoration: TextDecoration.underline,
      decorationColor: MyAppTheme.whiteColor);

  /// ///////////////White Color /////////////////////

  ///////////////////UnderLine//////////////////////
  /*static TextStyle white16BoldStyle =  TextStyle(
      fontWeight: MyFontWeight.bold,
      fontSize: 16,
      color: MyAppTheme.whiteColor);*/
  ///////////////bold////////////////
  static TextStyle white24boldStyle =  TextStyle(
      fontWeight: MyFontWeight.semiBold,
      fontSize:  24,
      color: MyAppTheme.whiteColor);

  static TextStyle white22boldStyle =  TextStyle(
      fontWeight: MyFontWeight.semiBold,
      fontSize:  22,
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

  static TextStyle white14boldStyle =  TextStyle(
      fontWeight: MyFontWeight.semiBold,
      fontSize:  14,
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

  static TextStyle green14BoldStyle =  TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 14,
      color: MyAppTheme.greenColor
  );
  static TextStyle green12BoldStyle =  TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 14,
      color: MyAppTheme.greenColor
  );

  static TextStyle blue14BoldStyle =  TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 14,
      color: MyAppTheme.blueTextClr
  );

///////////////////Personalized////////////////////
//   static TextStyle storyContentStyle =  TextStyle(
//       fontWeight: MyFontWeight.light,
//       fontSize: 14,
//       letterSpacing: 1.5,
//       color: MyAppTheme.whiteColor);



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

  static TextStyle red14RegularStyle =  TextStyle(
      fontWeight: MyFontWeight.bold,
      fontSize:  14,
      color: MyAppTheme.redBtnColor
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
  static TextStyle black34BoldStyle =  TextStyle(
      fontWeight: MyFontWeight.bold,
      fontSize: 34,
      color: MyAppTheme.blackColor);
  static TextStyle red16BoldStyle =  TextStyle(
      fontWeight: MyFontWeight.bold,
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

  /////Light
  static TextStyle black16LightStyle =  TextStyle(
      fontWeight: MyFontWeight.light,
      fontSize: 16,
      color: MyAppTheme.blackColor);

  static TextStyle black12LightStyle =  TextStyle(
      fontWeight: MyFontWeight.light,
      fontSize: 12,
      color: MyAppTheme.blackColor);

}
