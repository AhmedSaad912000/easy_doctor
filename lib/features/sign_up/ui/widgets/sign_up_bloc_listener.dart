import 'package:esay_doctor/core/helper/extensions.dart';
import 'package:esay_doctor/core/routing/routes.dart';
import 'package:esay_doctor/core/theming/colors.dart';
import 'package:esay_doctor/core/theming/styles.dart';
import 'package:esay_doctor/features/sign_up/logic/sign_up_bloc.dart';
import 'package:esay_doctor/features/sign_up/logic/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBlocListener extends StatefulWidget {
  const SignUpBlocListener({super.key});

  @override
  State<SignUpBlocListener> createState() => _SignUpBlocListenerState();
}

class _SignUpBlocListenerState extends State<SignUpBlocListener> {

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc,SignUpState>(
        listenWhen: (previous, current) =>
        current is Loading || current is Success || current is Error,
        listener: (context, state) {
          state.whenOrNull(
              loading: () {
                showDialog(
                  context: context,
                  builder: (context) =>  Center(
                    child: CircularProgressIndicator(
                      color: ColorsManager.mainBlue,
                    ),
                  ),
                );
          }, success: (SignUpResponse) {
            context.pop();
            showSuccessDialog(context);
          }, error: (error) {
            setupErrorState(context, error);
          });
        },
        child: SizedBox.shrink());
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font15DarkBlueMedium,
        ),
        actions: [
          TextButton(
              onPressed: () {
                context.pop();
              },
              child: Text(
                "Got it",
                style: TextStyles.font14BlueSemiBold,
              ))
        ],
      ),
    );
  }
}

void showSuccessDialog(BuildContext context) {
  showDialog(context: context, builder: (context) {
    return AlertDialog(
      title:Text("Signup Successful"),
      content: SingleChildScrollView(
        child: ListBody(
          children:<Widget> [
            Text('Congratulations, you have signed up successfully!'),
          ],
        ),
      ),
      actions:<Widget> [
        TextButton(onPressed: (){
          context.pushNamed(Routes.loginScreen);
        }, child:Text('Continue'),
          style:TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          disabledForegroundColor: Colors.grey,
        ),),
      ],
    );
  }
    ,);
}
