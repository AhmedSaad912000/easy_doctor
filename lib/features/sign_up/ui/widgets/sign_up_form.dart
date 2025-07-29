import 'package:esay_doctor/core/helper/app_regex.dart';
import 'package:esay_doctor/features/login/ui/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../../../core/widgets/input_validation.dart';

class SignUpForm extends StatefulWidget {
  final  TextEditingController emailController;
  final  TextEditingController passwordController;
  final  TextEditingController numberController;
  final  TextEditingController nameController;
  final  TextEditingController confirmPassword;
  const SignUpForm({super.key, required this.emailController, required this.passwordController, required this.numberController, required this.nameController, required this.confirmPassword,});

  @override
  State<SignUpForm> createState() => _SignUpForm();
}
class _SignUpForm extends State<SignUpForm> {
  @override
  void initState() {
    super.initState();
    widget.passwordController.addListener(() {
      setupPasswordControllerListener();
    });
  }
  void setupPasswordControllerListener() {
    hasLowerCase = AppRegex.hasLowerCase( widget.passwordController.text);
    hasUpperCase = AppRegex.hasUpperCase( widget.passwordController.text);
    hasSpecialCharacters = AppRegex.hasSpecialCharacter( widget.passwordController.text);
    hasNumber = AppRegex.hasNumber( widget.passwordController.text);
    hasMinLength = AppRegex.hasMinLength( widget.passwordController.text);
    setState(() {});
  }
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          AppTextFormField(
            hintText: "name",
            controller:  widget.nameController,
            validator: InputValidator.name,
          ),
          verticalSpace(18),
          AppTextFormField(
            hintText: "Email",
            controller:  widget.emailController,
            validator: InputValidator.email,
          ),
          verticalSpace(18),
          AppTextFormField(
            hintText: "number",
            controller:  widget.numberController,
            validator: InputValidator.phone,
          ),
          verticalSpace(18),
          AppTextFormField(
            hintText: 'Password',
            isObscureText: true,
            controller: widget.passwordController,
            validator: InputValidator.password,
          ),
          verticalSpace(18),
          AppTextFormField(
            hintText: 'Confirm Password',
            isObscureText: true,
            controller: widget.confirmPassword,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please confirm your password';
              } else if (value != widget.passwordController.text) {
                return 'Passwords do not match';
              }
              return null;
            },
          ),

          verticalSpace(24),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasNumber: hasNumber,
            hasSpecialCharacters: hasSpecialCharacters,
            hasMinLength: hasMinLength,
          )
        ]);
  }
}
