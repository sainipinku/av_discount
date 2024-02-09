

import 'package:flutter/material.dart';
import '../constants.dart';
import '../helper.dart';
import '../my_app_theme.dart';
import '../my_icons.dart';
import '../my_styles.dart';
import '../ui_helper.dart';



Widget phoneTextField ( {required TextEditingController controller ,EdgeInsets? scrollPadding}) {
  return TextFormField(
      //style: MyStyles.black18TextLight,
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
         labelText: 'MOBILE NUMBER',
          labelStyle: MyStyles.black14BoldStyle
      ),
  );
}

Widget emailTextField ( {required TextEditingController controller , String? svgIcon, EdgeInsets? scrollPadding}) {
  return TextFormField(
      style: MyStyles.black14BoldStyle,
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
        hintStyle: MyStyles.black14BoldStyle,
        labelText: 'Enter Email id',
          labelStyle: MyStyles.black14BoldStyle

      ));
}

Widget fullNameTextField ( {required TextEditingController controller , String? svgIcon, EdgeInsets? scrollPadding})
{
  return TextFormField(
      style: MyStyles.black14BoldStyle,
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
          hintStyle: MyStyles.black14BoldStyle,
          labelText: 'Full Name',
          labelStyle: MyStyles.black14BoldStyle

      ));
}

Widget passwordTextField ( {required TextEditingController controller ,
  String? hintText ,
  VoidCallback? onEyeTap,
  bool isObscureBtnVisible =true,
  String? svgIcon,
  Icon? prefixIcon,
  EdgeInsets? scrollPadding,
  bool isObscureText = false}) {
  return TextFormField(
      //style: MyStyles.black18TextLight,
      //scrollPadding: (scrollPadding == null) ? EdgeInsets.zero : scrollPadding,
      controller: controller,
      validator: (value) {
        if(value!.isEmpty){
          return 'Please fill password';
        }else if(value.length < 6){
          return "Password must contain six Characters";
        }else{
          return null;
        }
      },
      obscureText: isObscureText,
      obscuringCharacter: '*',
      style: MyStyles.black14BoldStyle,
      decoration: InputDecoration(
        suffixIcon:(isObscureBtnVisible)? GestureDetector(
          onTap: onEyeTap,
          child: const Icon(Icons.remove_red_eye_rounded),
        ):null,
        // contentPadding: const EdgeInsets.all(12),
        prefixIcon: prefixIcon,
        hintText: hintText ?? '*************',

        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: MyAppTheme.blackLightColor),
            borderRadius: const BorderRadius.all(
                Radius.circular(5))),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: MyAppTheme.blackLightColor),
            borderRadius: const BorderRadius.all(
                Radius.circular(5))),
        hintStyle: MyStyles.lightBlack14RegularStyle,
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: MyAppTheme.errorColor),
            borderRadius: const BorderRadius.all(
                Radius.circular(5))
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: MyAppTheme.blackLightColor),
            borderRadius:  const BorderRadius.all(
                Radius.circular(5))
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: MyAppTheme.blackLightColor),
            borderRadius: BorderRadius.circular(5)),
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
      style: MyStyles.lightBlack14BoldStyle,
      textCapitalization: TextCapitalization.words,
      controller: controller,
      keyboardType: textInputType ?? TextInputType.text,
      enabled: isEditable,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        suffix: suffix,
        label: Text(title ?? ""),
        labelStyle: MyStyles.lightBlack12RegularStyle,
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
      style: MyStyles.lightBlack14BoldStyle,
      textCapitalization: TextCapitalization.words,
      controller: controller,
      keyboardType: textInputType ?? TextInputType.text,
      enabled: isEditable,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        suffix: suffix,
        label: Text(title ?? ""),
        labelStyle: MyStyles.lightBlack12RegularStyle,
        //contentPadding: const EdgeInsets.all(12),
        hintText : hintText ?? '',
        hintStyle: MyStyles.lightBlack14RegularStyle,
        enabledBorder: null,
        disabledBorder:null,
        errorBorder: null,
        focusedErrorBorder: null,
        focusedBorder: null
      ));
}


