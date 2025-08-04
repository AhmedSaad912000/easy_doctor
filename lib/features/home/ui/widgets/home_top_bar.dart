import 'package:esay_doctor/core/helper/spacing.dart';
import 'package:esay_doctor/core/theming/colors.dart';
import 'package:esay_doctor/core/theming/styles.dart';
import 'package:esay_doctor/core/widgets/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       Column(
         children: [
           Text("Hi Ahmed !",style: TextStyles.font18DarkBlueBold,),
           verticalSpace(3),
           Text("How are you Today ?",style: TextStyles.font12GrayRegular,),

         ],
       ),
        Spacer(),
        CircleAvatar(
          radius: 24.sp,
          backgroundColor: ColorsManager.moreLighterGray,
          child: Padding(
            padding:  EdgeInsets.all(12.r),
            child: AppImage("notifications.png"),
          ),
        )

      ],
    );
  }
}
