import 'package:esay_doctor/features/sign_up/logic/sign_up_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/model/sign_up_request_body.dart';
import '../data/repo/sign_up_repo.dart';
import 'sign_up_event.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignupRepo _signupRepo;

  SignUpBloc(this._signupRepo) : super(const SignUpState.initial()) {
    on<SignUpEvent>((event, emit) async {
      await event.when(
        started: () {
          emit(const SignUpState.initial());
        },
        signup: (email, password, phone, name,confirmpassword) async {
          emit(const SignUpState.loading());

          try {
            final response = await _signupRepo.signup(
              SignUpRequestBody(
                gender: 0,
                passwordConfirmation: confirmpassword,
                email: email,
                password: password,
                phone: phone,
                name: name,
              ),
            );

            response.when(
              success: (signupResponse) => emit(SignUpState.success(signupResponse)),
              failure: (error) => emit(SignUpState.error(error: error.apiErrorModel.message ?? '')),
            );
          } catch (e) {
            emit(SignUpState.error(error: e.toString()));
          }
        },
      );
    });
  }
}
