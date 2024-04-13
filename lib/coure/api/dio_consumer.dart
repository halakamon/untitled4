import 'package:dio/dio.dart';
import 'package:untitled4/coure/api/api_consumer.dart';
import 'package:untitled4/coure/api/api_interseptor.dart';
import 'package:untitled4/coure/api/end_points.dart';
import 'package:untitled4/coure/errors/exceptions.dart';

class DioCunsumer extends ApiConsumer{
  DioCunsumer({required super.dio})
{
  dio.options.baseUrl=endpoints.baseUrl;
  dio.interceptors.add(ApiInterceptor());
  dio.interceptors.add(LogInterceptor(
    request: true, requestBody: true,requestHeader: true,
    responseBody: true, 
    responseHeader: true, 
     error: true,
    

  ));
}


  
  get queryParameters => null;

  

 

  @override
  Future Post(String Path, {dynamic data, Map<String, dynamic>? gueryParameters,bool isFormData=false,})async {
  try{
  final Response=await Dio().post(
       Path,data:isFormData?FormData.fromMap(data): data, 
       queryParameters: queryParameters, 
    );
   return Response.data;}
    on DioException catch (e){
   handleDioException(e);

   }
  }

  @override
  Future delete(String Path, {dynamic data, Map<String, dynamic>? gueryParameters,bool isFormData=false}) async{
  try{
  final Response =await  Dio().delete( Path, data : isFormData?FormData.fromMap(data): data,queryParameters: queryParameters);
   return Response.data;}
   // ignore: nullable_type_in_catch_clause
   on DioException catch (e){
   handleDioException(e);

   }
  }


  @override
  // ignore: non_constant_identifier_names
  Future get(String Path, {Object? data, Map<String, dynamic>? gueryParameters, bool isFormData=false})async {
   try{ final Response= await  Dio().get(Path, data:  data,queryParameters: queryParameters,);
  return Response.data;}
  on DioException catch (e){
   handleDioException(e);

   }
  }

  @override
  Future patch(String Path, {dynamic data, Map<String, dynamic>? gueryParameters,bool isFormData=false}) async {
   try{ final Response =   await      Dio().patch(Path,data:isFormData?FormData.fromMap(data): data,queryParameters: queryParameters);
  return Response.data;}
  on DioException catch (e){
   handleDioException(e);

   }
  }
  
}