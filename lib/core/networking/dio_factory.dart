import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory{
  DioFactory._();
  static Dio?dio;
  static Dio getDio(){
    Duration timeOut = const Duration(seconds: 30);
    if(dio==null){
      dio=Dio();
      dio!..options.connectTimeout=timeOut..options.receiveTimeout=timeOut;
      addDioHeaders();
      addDioInterceptor();
      return dio!;
    }else{
      return dio!;
    }
  }
  static void addDioHeaders(){
    dio?.options.headers={
      "Accept":"application/Json",
      'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzU0MzkwNzQ0LCJleHAiOjE3NTQ0NzcxNDQsIm5iZiI6MTc1NDM5MDc0NCwianRpIjoieVpBc3dtdGFQWEZyMENocCIsInN1YiI6IjQ1OTMiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.lzpEK8bsZKlp391521Z9nTNVsIqcrI__DfxM_kn_3iY'
    };
  }
 static void addDioInterceptor(){
    dio?.interceptors.add(
        PrettyDioLogger(
          requestBody: true,
          requestHeader: true,
          responseHeader: true,

    ));
 }
}