import 'package:dio/dio.dart';
import 'package:esay_doctor/core/networking/api_service.dart';
import 'package:esay_doctor/core/networking/dio_factory.dart';
import 'package:esay_doctor/features/login/data/repo/login_repo.dart';
import 'package:esay_doctor/features/login/logic/login_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt=GetIt.instance;
Future<void> setupGetIt()async{
  Dio dio=  DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginBloc>(() => LoginBloc(getIt()));

}