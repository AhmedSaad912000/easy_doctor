import 'package:esay_doctor/core/helper/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Don't have an account yet?  ",
              style: TextStyles.font13DarkBlueRegular,
            ),
            TextSpan(
              text: "Sign Up",
              style: TextStyles.font13BlueSemiBold,
    recognizer: TapGestureRecognizer()..onTap = () {
    context.pushReplacementNamed(Routes.signUpScreen);
              }
            ),
          ],
        ),
      ),
    );
  }
}
