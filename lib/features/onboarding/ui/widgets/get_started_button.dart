import 'package:esay_doctor/core/helper/extensions.dart';
import 'package:esay_doctor/core/routing/routes.dart';
import 'package:esay_doctor/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w),
      child: TextButton(
          onPressed: (){
           context.pushNamed(Routes.loginScreen);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlue),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: MaterialStateProperty.all(Size(double.infinity, 52.h)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r)

            ))
          ),
          child: Text("Get Started",style: TextStyles.font16WhiteSemiBold,)),
    );
  }
}
