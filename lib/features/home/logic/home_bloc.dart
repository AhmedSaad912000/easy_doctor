import 'package:bloc/bloc.dart';
import '../data/repos/home_repo.dart';
import 'home_event.dart';
import 'home_state.dart';
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepo _homeRepo;

  HomeBloc(this._homeRepo) : super(const HomeState.initial()) {
    on<GetSpecializations>(getSpecializations);
  }

  Future<void> getSpecializations(GetSpecializations event, Emitter<HomeState> emit,) async {
    emit(const HomeState.specializationsLoading());

      final response = await _homeRepo.getSpecialization();
      response.when(success: (specializationsResponseModel){
        emit(HomeState.specializationsSuccess(specializationsResponseModel));

      }, failure: (errorHandler){
        emit(HomeState.specializationsError(errorHandler));


      });
  }


}
