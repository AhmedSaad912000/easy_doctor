part of 'speciality_list_view.dart';

class SpecialityListViewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int itemIndex;
  final int selectedIndex;

  const SpecialityListViewItem(
      {super.key,
      this.specializationsData,
      required this.itemIndex,
      required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        itemIndex == selectedIndex
            ? Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorsManager.darkBlue,
                    width: 2,
                  ),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 28.r,
                  backgroundColor: ColorsManager.lightBlue,
                  child: AppImage(
                    "spciality.jpg",
                    height: 42.h,
                    width: 42.w,
                  ),
                ),
              )
            : CircleAvatar(
                radius: 28.r,
                backgroundColor: ColorsManager.lightBlue,
                child: Padding(
                  padding: EdgeInsets.all(16.r),
                  child: AppImage("spciality.jpg"),
                ),
              ),
        verticalSpace(8),
        Text(
          specializationsData?.name ?? "Specialization",
          style: itemIndex == selectedIndex
              ? TextStyles.font14DarkBlueBold
              : TextStyles.font12DarkBlueRegular,
        )
      ],
    );
  }
}
