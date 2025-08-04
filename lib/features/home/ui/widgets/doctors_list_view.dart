import 'package:esay_doctor/core/theming/styles.dart';
import 'package:esay_doctor/core/widgets/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
      itemBuilder: (context, index) => Container(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: AppImage(
                'https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg',
                fit: BoxFit.cover,
                height: 110.h,
                width: 110.w,
              ),
            ),
            horizontalSpace(24),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name ",
                    style: TextStyles.font18DarkBlueBold,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(5),
                  Text(
                    "Degree | 0111002938 ",
                    style: TextStyles.font12GrayMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(5),
                  Text(
                    "Email@gmail.com ",
                    style: TextStyles.font12GrayMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
              
                ],
              ),
            ),
          ],
        ),
      ),
      separatorBuilder: (context, index) => SizedBox(
        height: 16.h,
      ),
      itemCount: 10,
    ));
  }
}
