import 'package:esay_doctor/core/theming/colors.dart';
import 'package:esay_doctor/core/theming/styles.dart';
import 'package:esay_doctor/features/home/logic/home_bloc.dart';
import 'package:esay_doctor/features/home/logic/home_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helper/spacing.dart';
import '../../../../../core/widgets/app_image.dart';
import '../../../data/models/specialization_response_model.dart';

part 'speciality_list_view_item.dart';

class SpecialityListView extends StatefulWidget {
  final List<SpecializationsData?> specializationsDataList;

  const SpecialityListView(
      {super.key, required this.specializationsDataList});

  @override
  State<SpecialityListView> createState() => _SpecialityListViewState();
}

class _SpecialityListViewState extends State<SpecialityListView> {
  var selectedSpecializationIndex=0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              GestureDetector(
                onTap: () {
                  selectedSpecializationIndex = index;
                  setState(() {});

                  final specializationId = widget.specializationsDataList[index]?.id;
                  if (specializationId != null) {
                    context.read<HomeBloc>().add(HomeEvent.getDoctorsBySpecializationId(specializationId: specializationId));
                  }
                },

                child: SpecialityListViewItem(itemIndex: index,
                  specializationsData: widget.specializationsDataList[index],
                    selectedIndex:selectedSpecializationIndex,
                ),
              ),
          separatorBuilder: (context, index) => SizedBox(width: 24.w,),itemCount:widget.specializationsDataList.length),
    );
  }
}
