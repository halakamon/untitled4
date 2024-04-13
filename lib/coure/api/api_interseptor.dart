import 'package:dio/dio.dart';
import 'package:untitled4/coure/api/end_points.dart';

class ApiInterceptor extends Interceptor{

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
  options.headers[endpoints.baseUrl];

    super.onRequest(options, handler);
  }
}