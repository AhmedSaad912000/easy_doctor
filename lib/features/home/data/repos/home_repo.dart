import 'package:esay_doctor/core/networking/app_error_handler.dart';
import 'package:esay_doctor/features/home/data/apis/home_api_service.dart';
import 'package:esay_doctor/features/home/data/models/specialization_response_model.dart';

import '../../../../core/networking/api_result.dart';

class HomeRepo{
  final HomeApiService _homeApiService;
  HomeRepo(this._homeApiService);
  Future<ApiResult<SpecializationsResponseModel>> getSpecialization()async{
    try{
      final response= await _homeApiService.getSpecialization();
       return ApiResult.success(response);
    }catch(error){
return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}