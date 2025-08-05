import 'package:dio/dio.dart';
import 'package:esay_doctor/core/networking/api_constants.dart';
import 'package:esay_doctor/features/home/data/apis/home_api_constants.dart';
import 'package:retrofit/retrofit.dart';
import '../models/specialization_response_model.dart';
part 'home_api_service.g.dart';


@RestApi(baseUrl:ApiConstants.apiBaseUrl )
abstract class HomeApiService{
  factory HomeApiService(Dio dio)= _HomeApiService;
      @GET(HomeApiConstants.specialization)
  Future<SpecializationsResponseModel> getSpecialization();
}