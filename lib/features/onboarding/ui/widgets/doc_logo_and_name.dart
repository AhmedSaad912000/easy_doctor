import 'package:esay_doctor/core/widgets/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppImage('doc_logo.png',height: 38.h,width: 38.w,),
        SizedBox(width: 8.w,),
        Text("DocDoc",style: TextStyles.font24Black700Weight,)
        
      ],
    );
  }
}
