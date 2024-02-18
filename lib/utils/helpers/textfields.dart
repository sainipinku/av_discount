

import 'package:flutter/material.dart';
import '../constants.dart';
import '../helper.dart';
import '../my_app_theme.dart';
import '../my_icons.dart';
import '../my_styles.dart';
import '../ui_helper.dart';



Widget phoneTextField ( {required TextEditingController controller ,EdgeInsets? scrollPadding}) {
  return TextFormField(
      style: MyStyles.grey14Regular76PoppingStyle,
      scrollPadding: (scrollPadding == null) ? EdgeInsets.zero : scrollPadding,
      controller: controller,
      keyboardType: TextInputType.number,
      validator: (phone) {
        if(phone!.isEmpty){
          return 'Please enter a phone number';
        }else{
          return null;
        }
      },
      decoration: InputDecoration(
         hintText: 'MOBILE NUMBER',
         labelText: 'MOBILE NUMBER', labelStyle: MyStyles.grey14RegularPoppingStyle
      ),
  );
}

Widget emailTextField ( {required TextEditingController controller , String? svgIcon, EdgeInsets? scrollPadding}) {
  return TextFormField(
      style: MyStyles.grey14Regular76PoppingStyle,
      scrollPadding: (scrollPadding == null) ? EdgeInsets.zero : scrollPadding,
      controller: controller,
      validator: (email) {
        if(email!.isEmpty){
          return 'Please enter an email';
        }
        else if(Helpers.isEmail(email)){
          return null;
        }else{
          return 'Please enter a valid email';
        }
      },
      decoration: InputDecoration(
        prefixIcon: (svgIcon != null) ? svgImage(img: svgIcon) : null,
        // contentPadding: const EdgeInsets.all(12),
        hintText: enterEmailText,
        hintStyle: MyStyles.grey14Regular76PoppingStyle,
        labelText: 'Enter Email id',
          labelStyle: MyStyles.grey14RegularPoppingStyle

      ));
}

Widget fullNameTextField ( {required TextEditingController controller , String? svgIcon, EdgeInsets? scrollPadding})
{
  return TextFormField(
      style: MyStyles.grey14Regular76PoppingStyle,
      scrollPadding: (scrollPadding == null) ? EdgeInsets.zero : scrollPadding,
      controller: controller,
      validator: (email) {
        if(email!.isEmpty){
          return 'Please enter an name';
        } else{
          return 'Please enter a valid email';
        }
      },
      decoration: InputDecoration(
          prefixIcon: (svgIcon != null) ? svgImage(img: svgIcon) : null,
          // contentPadding: const EdgeInsets.all(12),
          hintText: enterEmailText,
          hintStyle: MyStyles.grey14Regular76PoppingStyle,
          labelText: 'Full Name',
          labelStyle: MyStyles.grey14RegularPoppingStyle

      ));
}


/*
Widget customTextField ( {
  required TextEditingController controller ,
  String? svgIcon,
  Icon? suffixIcon,
  Icon? prefixIcon,
  EdgeInsets? scrollPadding,
  String? hintText,
  VoidCallback? onIconTapSuffix,
  VoidCallback? onIconTapPrefix,
  TextInputType? textInputType,
  bool? disabled}) {
  return TextFormField(
    //enabled: (disabled== null)? true : !disabled,
      style: MyStyles.lightBlack14BoldStyle,
      textCapitalization: TextCapitalization.words,
      scrollPadding: (scrollPadding == null) ? EdgeInsets.zero : scrollPadding,
      controller: controller,
      keyboardType: textInputType?? TextInputType.text,

      decoration: InputDecoration(
        suffix: (suffixIcon != null) ? suffixIcon : (svgIcon != null)
            ? GestureDetector(
            onTap: onIconTapSuffix,
            child: svgImage(img: svgIcon)
        ) : null,
        prefix: (prefixIcon != null)?prefixIcon:(svgIcon != null)
            ? GestureDetector(
          onTap: onIconTapPrefix,
          child: svgImage(img: svgIcon)
        ) : null,
        //contentPadding: const EdgeInsets.all(12),
        hintText: (hintText!=null)? hintText : '',
        hintStyle: MyStyles.hintTextStyle,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: MyAppTheme.blackTextColor),
            borderRadius: BorderRadius.all(
                Radius.circular(5))),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: MyAppTheme.blackTextColor),
            borderRadius: BorderRadius.all(
                Radius.circular(5))),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: MyAppTheme.blackTextColor),
            borderRadius: BorderRadius.all(
                Radius.circular(5))
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: MyAppTheme.errorColor),
            borderRadius:  BorderRadius.all(
                Radius.circular(5))
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: MyAppTheme.blackTextColor),
            borderRadius: BorderRadius.circular(5)),
      ));
}*/

Widget customTextField({
  required TextEditingController controller ,
  Icon? suffixIcon,
  Icon? prefixIcon,
  String? hintText,
  TextInputType? textInputType,
}){
  return TextFormField(
    //enabled: (disabled== null)? true : !disabled,
      style: MyStyles.lightBlack14BoldStyle,
      textCapitalization: TextCapitalization.words,
      controller: controller,
      keyboardType: textInputType ?? TextInputType.text,

      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        //contentPadding: const EdgeInsets.all(12),
        hintText : hintText ?? '',
        hintStyle: MyStyles.lightBlack14RegularStyle,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: MyAppTheme.blackTextColor),
            borderRadius: const BorderRadius.all(
                Radius.circular(5))),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: MyAppTheme.blackTextColor),
            borderRadius: const BorderRadius.all(
                Radius.circular(5))),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: MyAppTheme.blackTextColor),
            borderRadius: const BorderRadius.all(
                Radius.circular(5))
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: MyAppTheme.errorColor),
            borderRadius:  const BorderRadius.all(
                Radius.circular(5))
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: MyAppTheme.blackTextColor),
            borderRadius: BorderRadius.circular(5)),
      ));
}


Widget underLineTextField({
  required TextEditingController controller ,
  Icon? suffixIcon,
  Widget? suffix,
  Icon? prefixIcon,
  String? hintText,
  String? title,
  TextInputType? textInputType,
  bool? isEditable = true,
  bool? isUnderLine = true,
}){
  return TextFormField(
    //enabled: (disabled== null)? true : !disabled,
      style: MyStyles.black16boldPoppinsStyle,
      textCapitalization: TextCapitalization.words,
      controller: controller,
      keyboardType: textInputType ?? TextInputType.text,
      enabled: isEditable,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        suffix: suffix,
        label: Text(title ?? ""),
        labelStyle: MyStyles.black12LightCMStyle,
        //contentPadding: const EdgeInsets.all(12),
        hintText : hintText ?? '',
        hintStyle: MyStyles.lightBlack14RegularStyle,
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: MyAppTheme.blackTextColor),),
        disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: MyAppTheme.blackTextColor),),
        errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: MyAppTheme.blackTextColor),
        ),
        focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: MyAppTheme.errorColor),
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: MyAppTheme.blackTextColor),)
      ));
}

Widget noLineTextField({
  required TextEditingController controller ,
  Icon? suffixIcon,
  Widget? suffix,
  Icon? prefixIcon,
  String? hintText,
  String? title,
  TextInputType? textInputType,
  bool? isEditable = true,
}){
  return TextFormField(
    //enabled: (disabled== null)? true : !disabled,
      style: MyStyles.black17LightSFPtoDisplayStyle,
      textCapitalization: TextCapitalization.words,
      controller: controller,
      keyboardType: textInputType ?? TextInputType.text,
      enabled: isEditable,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        suffix: suffix,
        label: Text(title ?? ""),
        labelStyle: MyStyles.black12LightCMStyle,
        //contentPadding: const EdgeInsets.all(12),
        hintText : hintText ?? '',
        hintStyle: MyStyles.black17LightSFPtoDisplayStyle,
        enabledBorder: null,
        disabledBorder:null,
        errorBorder: null,
        focusedErrorBorder: null,
        focusedBorder: null
      ));
}


