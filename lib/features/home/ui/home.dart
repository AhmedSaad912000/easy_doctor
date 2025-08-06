import 'package:esay_doctor/features/home/logic/home_bloc.dart';
import 'package:esay_doctor/features/home/logic/home_state.dart';
import 'package:esay_doctor/features/home/ui/widgets/doctors_list/doctors_list_view.dart';
import 'package:esay_doctor/features/home/ui/widgets/doctors_list/doctors_shimmer_loading.dart';
import 'package:esay_doctor/features/home/ui/widgets/specialization_list/speciality_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helper/spacing.dart';
import 'widgets/doctor_blue_containar.dart';
import 'widgets/specialization_list/speciality_list_view.dart';
import 'widgets/doctor_speciality_see_all.dart';
import 'widgets/home_top_bar.dart';
part 'widgets/specialization_list/specializations_bloc_builder.dart';
part 'widgets/doctors_list/doctors_bloc_builder.dart';
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
              verticalSpace(18),
              SpecializationsBlocBuilder(),
              verticalSpace(18),

              DoctorsBlocBuilder(),

            ],
          ),
        ),
      ),
    );
  }

}
