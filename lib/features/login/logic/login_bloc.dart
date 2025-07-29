import 'package:esay_doctor/features/login/logic/login_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/networking/api_error_model.dart';
import '../data/model/login_request_body.dart';
import '../data/repo/login_repo.dart';
import 'login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepo _loginRepo;

  LoginBloc(this._loginRepo) : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when(
        started: () {
          emit(const LoginState.initial());
        },
        login: (email, password) async {
          emit(const LoginState.loading());
          try {
            final response = await _loginRepo.login(LoginRequestBody(email: email, password: password),);
            response.when(
              success: (loginResponse) => emit(LoginState.success(loginResponse)),
                failure: (error) {
                  emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
                  print("==> Emitting error state $state");

                });
          } catch (e) {
            emit(LoginState.error(error: e.toString()));
          }
        },
      );
    });
  }

}
