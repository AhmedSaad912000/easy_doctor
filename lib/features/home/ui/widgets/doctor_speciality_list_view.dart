import 'package:esay_doctor/core/theming/colors.dart';
import 'package:esay_doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/app_image.dart';
import '../../data/models/specialization_response_model.dart';

part 'doctors_speciality_list_view_item.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  final List<SpecializationsData?> specializationsDataList;

  const DoctorsSpecialityListView(
      {super.key, required this.specializationsDataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              DoctorsSpecialityListViewItem(itemIndex: index,
                specializationsData: specializationsDataList[index],),
          separatorBuilder: (context, index) => SizedBox(width: 24.w,),itemCount:specializationsDataList.length),
    );
  }
}
