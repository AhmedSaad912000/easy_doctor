import 'package:esay_doctor/core/theming/colors.dart';
import 'package:esay_doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/app_image.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  const DoctorsSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Column(
            children: [
              CircleAvatar(
                radius: 28.r,
                backgroundColor: ColorsManager.lightBlue,
                child: Padding(
                  padding:  EdgeInsets.all(16.r),
                  child: AppImage("spciality.jpg"),
                ),
              ),
              verticalSpace(8),
              Text("Specialsation",style: TextStyles.font12DarkBlueRegular,)
            ],
          ),
          separatorBuilder: (context, index) => SizedBox(
                width: 24.w,
              ),
          itemCount: 8),
    );
  }
}
