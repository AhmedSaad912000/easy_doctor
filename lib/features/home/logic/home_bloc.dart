import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/networking/app_error_handler.dart';
import '../data/models/specialization_response_model.dart';
import '../data/repos/home_repo.dart';
import 'home_event.dart';
import 'home_state.dart';
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepo _homeRepo;

  HomeBloc(this._homeRepo) : super(const HomeState.initial()) {
    on<GetSpecializations>(getSpecializations);
    on<GetDoctorsBySpecializationId>(_onGetDoctorsList);

  }
  List<SpecializationsData?>? specializationsList = [];

  Future<void> getSpecializations(GetSpecializations event, Emitter<HomeState> emit,) async {
    emit(const HomeState.specializationsLoading());

      final response = await _homeRepo.getSpecialization();
      response.when(success: (specializationsResponseModel){
        specializationsList = specializationsResponseModel.specializationsDataList ?? [];
        emit(HomeState.specializationsSuccess(specializationsList));
        final firstId = specializationsList?.firstWhere(
              (element) => element?.id != null,)?.id;
        if (firstId != null) {
          add(HomeEvent.getDoctorsBySpecializationId(specializationId: firstId));
        }
            }, failure: (errorHandler){
        emit(HomeState.specializationsError(errorHandler));


      });
  }



  Future<void> _onGetDoctorsList(GetDoctorsBySpecializationId event, Emitter<HomeState> emit) async{
    final doctorsList = filterSpecializationsListById(event.specializationId);

    if (doctorsList != null && doctorsList.isNotEmpty) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle('No doctors found.')));
    }
  }
  List<Doctors?>? filterSpecializationsListById(int? specializationId) {
    return specializationsList
        ?.firstWhere(
          (specialization) => specialization?.id == specializationId)?.doctorsList;
  }
}
