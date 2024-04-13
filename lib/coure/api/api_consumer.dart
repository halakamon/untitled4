import 'dart:core';

import 'package:dio/dio.dart';

abstract class ApiConsumer {
 final Dio dio;

  ApiConsumer({required this.dio});

Future<dynamic> get(
  String Path,
  {
    Object? data,
    Map<String,dynamic>? gueryParameters,bool isFormData=false,
  }
);
// ignore: non_constant_identifier_names
Future<dynamic> Post( String Path,
  {
    Object? data,
    Map<String,dynamic>? gueryParameters,
    bool isFormData=false,
  });
Future<dynamic> patch( String Path,
  {
    Object? data,
    Map<String,dynamic>? gueryParameters, bool isFormData=false,
  });

Future<dynamic> delete( String Path,
  {
    Object? data,
    Map<String,dynamic>? gueryParameters, bool isFormData=false,
  });
}