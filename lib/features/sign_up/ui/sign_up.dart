import 'package:esay_doctor/core/helper/extensions.dart';
import 'package:esay_doctor/core/helper/spacing.dart';
import 'package:esay_doctor/core/theming/styles.dart';
import 'package:esay_doctor/core/widgets/app_text_button.dart';
import 'package:esay_doctor/features/sign_up/ui/widgets/already_have_account_text.dart';
import 'package:esay_doctor/features/sign_up/ui/widgets/sign_up_bloc_listener.dart';
import 'package:esay_doctor/features/sign_up/ui/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../login/ui/widgets/terms_and_condition_text.dart';
import '../logic/sign_up_bloc.dart';
import '../logic/sign_up_event.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create Account',
                    style: TextStyles.font24BlueBold,
                  ),
                  verticalSpace(8),
                  Text(
                    "Sign up now and start exploring all that our\n app has to offer. We're excited to welcome\n you to our community!",
                    style: TextStyles.font14GrayRegular,
                  ),
                  verticalSpace(36),
                  SignUpForm(
                    nameController: nameController,
                    numberController: numberController,
                    emailController: emailController,
                    passwordController: passwordController,
                    confirmPassword: confirmPasswordController,
                  ),
                  verticalSpace(24),
                  AppTextButton(buttonText: "Create Account",
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          context.read<SignUpBloc>().add(SignUpEvent.signup(
                            confirmpassword:confirmPasswordController.text ,
                               name: nameController.text,
                               phone: numberController.text,
                              email: emailController.text,
                              password: passwordController.text,
                          ));
                        }
                      }) ,
                  verticalSpace(18),
                  TermsAndConditionText(),
                  verticalSpace(60),
                  AlreadyHaveAccountText(),
                  SignUpBlocListener(),


                ],
              ),
            ),
          ),

        ),
      ),);
  }
  @override
  void dispose() {
    numberController.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

}
