import 'package:esay_doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditionText extends StatelessWidget {
  const TermsAndConditionText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          children:[
            TextSpan(
                text: "By logging, you agree to our ",
                style: TextStyles.font14GrayRegular
            ),
            TextSpan(
                text: "Terms & Conditions ",
                style: TextStyles.font13DarkBlueMedium
            ),
            TextSpan(
                text: "and ",
                style: TextStyles.font14GrayRegular.copyWith(
                  height: 1.5.h
                )
            ),
            TextSpan(
                text: "PrivacyPolicy.",
                style: TextStyles.font13DarkBlueMedium
            ),
          ]
      ),
    );
  }
}
