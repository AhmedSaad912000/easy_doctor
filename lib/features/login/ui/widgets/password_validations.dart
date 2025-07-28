import 'package:esay_doctor/core/helper/spacing.dart';
import 'package:esay_doctor/core/theming/colors.dart';
import 'package:esay_doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow("At least 1 lowercase letter",hasLowerCase),
        verticalSpace(3),
        buildValidationRow("At least 1 uppercase letter",hasUpperCase),
        verticalSpace(3),
        buildValidationRow("At least 1 specialCharacters ",hasSpecialCharacters),
        verticalSpace(3),
        buildValidationRow("At least 1 number ",hasNumber),
        verticalSpace(3),
        buildValidationRow("At least 8 characters long",hasMinLength),
      ],
    );
  }

Widget  buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5.r,
          backgroundColor: ColorsManager.gray,

        ),
        horizontalSpace(6),
        Text(text,style: TextStyles.font13DarkBlueRegular.copyWith(
          decoration: hasValidated?TextDecoration.lineThrough:null,
          decorationColor: Colors.green,
          decorationThickness: 2.5,
          color: hasValidated?ColorsManager.gray:ColorsManager.darkBlue
        ),)
      ],
    );
}
}
