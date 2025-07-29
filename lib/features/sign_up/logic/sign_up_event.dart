import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_event.freezed.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.started() = SignUpStarted;

  const factory SignUpEvent.signup({
    required String email,
    required String password,
    required String phone,
    required String name,
    required String confirmpassword,
  }) = SignUpRequested;
}
