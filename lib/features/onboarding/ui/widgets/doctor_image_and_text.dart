import 'package:esay_doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/app_image.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         AppImage("doc_logo_low_opicity.png",height:443.h,width: 443.w,),
        Container(
          child: AppImage("onboarding_doctor.png"),
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0.0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.14, 0.4])),
        ),
        Positioned(
            bottom: 30,
            right: 0,
            left: 0,
            child: Text(
              'Best Doctor\n Appointment App',
              textAlign: TextAlign.center,
              style: TextStyles.font32BlueBold.copyWith(
                height: 1.4.h
              ),
            ))
      ],
    );
  }
}
