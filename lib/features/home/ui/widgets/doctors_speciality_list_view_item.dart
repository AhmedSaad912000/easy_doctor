part of 'doctor_speciality_list_view.dart';

class DoctorsSpecialityListViewItem extends StatelessWidget {
  final SpecializationsData?specializationsData;
  final int itemIndex;
  const DoctorsSpecialityListViewItem({super.key, this.specializationsData, required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Text(specializationsData?.name?? "Specialization",style: TextStyles.font12DarkBlueRegular,)
      ],
    );
  }
}
