import 'package:esay_doctor/features/home/data/models/specialization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/networking/app_error_handler.dart';

part"home_state.freezed.dart";
@freezed
class HomeState with _$HomeState {
  // Specializations
  const factory HomeState.initial()=_Initial;
  const factory HomeState.specializationsLoading()=SpecializationsLoading;
  const factory HomeState.specializationsSuccess( List <SpecializationsData?>? specializationsDataList)=SpecializationsSuccess;
  const factory HomeState.specializationsError(ErrorHandler errorHandler)=SpecializationsError;


  // Doctors
  const factory HomeState.doctorsSuccess(List<Doctors?>? doctorsList) =DoctorsSuccess;
  const factory HomeState.doctorsError(ErrorHandler errorHandler) =
  DoctorsError;
}


