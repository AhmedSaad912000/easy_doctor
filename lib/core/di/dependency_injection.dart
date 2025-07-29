import 'package:dio/dio.dart';
import 'package:esay_doctor/core/networking/api_service.dart';
import 'package:esay_doctor/core/networking/dio_factory.dart';
import 'package:esay_doctor/features/login/data/repo/login_repo.dart';
import 'package:esay_doctor/features/login/logic/login_bloc.dart';
import 'package:esay_doctor/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:esay_doctor/features/sign_up/logic/sign_up_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt=GetIt.instance;
Future<void> setupGetIt()async{
  // dio && api_service
  Dio dio=  DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginBloc>(() => LoginBloc(getIt()));
  // sign up
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignUpBloc>(() => SignUpBloc(getIt()));

}