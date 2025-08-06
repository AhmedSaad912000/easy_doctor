import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  /// جلب قائمة التخصصات
  const factory HomeEvent.getSpecializations() = GetSpecializations;

  /// جلب قائمة الدكاترة بناءً على ID التخصص
  const factory HomeEvent.getDoctorsBySpecializationId({
    required int specializationId,
  }) = GetDoctorsBySpecializationId;
}
