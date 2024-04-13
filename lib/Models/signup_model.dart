import 'package:dio/dio.dart';
import 'package:untitled4/coure/api/end_points.dart';

class SignUpModel{

final String message;

  SignUpModel({required this.message});
  factory SignUpModel.fromJson(Map<String,dynamic>jsonData){
    return SignUpModel(message: jsonData['user'][Apikeys.message]);
  }

}