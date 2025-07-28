import 'package:esay_doctor/core/helper/spacing.dart';
import 'package:esay_doctor/core/theming/styles.dart';
import 'package:esay_doctor/core/widgets/app_text_button.dart';
import 'package:esay_doctor/features/login/logic/login_bloc.dart';
import 'package:esay_doctor/features/login/ui/widgets/already_have_account_text.dart';
import 'package:esay_doctor/features/login/ui/widgets/email_and_password.dart';
import 'package:esay_doctor/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:esay_doctor/features/login/ui/widgets/terms_and_condition_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import '../logic/login_event.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final bloc=GetIt.I<LoginBloc>();
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
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                    EmailAndPassword(
                      emailController: emailController,
                      passwordController: passwordController,
                    ),
                verticalSpace(24),
                Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      "Forgot Password?", style: TextStyles.font13BlueRegular,)),
                verticalSpace(40),
                AppTextButton(buttonText: "Login",
                    textStyle: TextStyles.font16WhiteSemiBold,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        bloc.add(LoginEvent.login(
                          email: emailController.text,
                          password: passwordController.text,
                        ));
                      }
                    }) ,
                    verticalSpace(18),
                    TermsAndConditionText(),
                    verticalSpace(60),
                    AlreadyHaveAccountText(),
                    LoginBlocListener(),


                  ],
                          ),
              ),
            ),

      ),
    ),);
  }
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

}
