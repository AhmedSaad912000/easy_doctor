import 'package:esay_doctor/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/styles.dart';

class AppTextFormField extends StatefulWidget {
  final InputBorder? focuseBorder;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enableBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool isObscureText;
  final Color? fillColor;
  final TextEditingController? controller;
  final Function(String?) validator;

  const AppTextFormField(
      {super.key,
      this.focuseBorder,
      this.contentPadding,
      this.enableBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hintText,
      this.isObscureText=false,
      this.fillColor,  this.controller,
        required this.validator});

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool isObscureText=true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText:widget.isObscureText && isObscureText,
      decoration: InputDecoration(
        isDense: true,
        contentPadding:widget.contentPadding ?? EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder:widget.focuseBorder ?? OutlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.3.w),
          borderRadius: BorderRadius.circular(16.r),
        ),
        enabledBorder: widget.enableBorder ?? OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorsManager.lighterGray, width: 1.3.w),
          borderRadius: BorderRadius.circular(16.r),
        ),
        errorBorder:OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.3.w),
          borderRadius: BorderRadius.circular(16.r),
        ),
         focusedErrorBorder:OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.3.w),
          borderRadius: BorderRadius.circular(16.r),
        ),

        hintStyle: widget.hintStyle ?? TextStyles.font14LightGrayRegular,
        hintText: widget.hintText,
        suffixIcon: widget.isObscureText ? GestureDetector(
          onTap: (){
            isObscureText =!isObscureText;
            setState(() {});

          },
          child: Icon(isObscureText ? Icons.visibility_off : Icons.visibility),):null,
        fillColor: widget.fillColor ?? ColorsManager.moreLightGray,
        filled: true,
      ),
      style: TextStyles.font14DarkBlueMedium,
      validator: (value){
        return widget.validator(value);
      },
    );
  }
}
