import 'package:esay_doctor/core/helper/extensions.dart';
import 'package:esay_doctor/features/onboarding/ui/widgets/doc_logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';
import 'widgets/doctor_image_and_text.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                DocLogoAndName(),
                SizedBox(
                  height: 30.h,
                ),
                DoctorImageAndText(),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 30.w),
                  child: Text(
                    "Manage and schedule all of your medical appointments easily\n with Docdoc to get a new experience.",
                    style:TextStyles.font13GrayRegular,
                    textAlign: TextAlign.center,

                  ),
                ),
                SizedBox(height: 30.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 24.w),
                  child: AppTextButton(
                      buttonText: "Get Started",
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        context.pushNamedAndRemoveUntil(Routes.loginScreen,predicate: (route) => false,);
                      }),
                ) ,

              ],
            ),
          ),
        ),
      ),
    );
  }
}
