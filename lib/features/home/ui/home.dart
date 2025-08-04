import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import 'widgets/doctor_blue_containar.dart';
import 'widgets/doctor_speciality_list_view.dart';
import 'widgets/doctor_speciality_see_alll.dart';
import 'widgets/doctors_list_view.dart';
import 'widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(20.w, 16.h, 20.w, 28.h),
        child: SafeArea(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeTopBar(),
              DoctorBlueContainer(),
              verticalSpace(28),
              DoctorsSpecialitySeeAll(),
              verticalSpace(16),
              DoctorsSpecialityListView(),
              verticalSpace(8),
              DoctorsListView(),




            ],
          ),
        ),
      ),
    );
  }
}
