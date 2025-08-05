part of "doctors_list_view.dart";
class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorsListViewItem({super.key, this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 16.h,top: 16.h),
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
                  doctorsModel?.name?? "Name",
                  style: TextStyles.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                  "${doctorsModel?.degree} | ${doctorsModel?.phone}",
                  style: TextStyles.font12GrayMedium,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                  doctorsModel?.email??"Email" ,
                  style: TextStyles.font12GrayMedium,
                  overflow: TextOverflow.ellipsis,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
