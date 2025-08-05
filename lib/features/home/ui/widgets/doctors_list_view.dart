import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_image.dart';
import '../../data/models/specialization_response_model.dart';
part"doctors_list_view_item.dart";



class DoctorsListView extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const DoctorsListView({super.key, this.doctorsList});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length,
        itemBuilder: (context, index) {
          return DoctorsListViewItem(
            doctorsModel: doctorsList?[index],
          );
        },
      ),
    );
  }
}