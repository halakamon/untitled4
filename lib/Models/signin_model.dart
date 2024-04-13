import 'package:untitled4/coure/api/end_points.dart';

class SignInModel{

final String  message;
final String token;

  SignInModel({required this.message, required this.token});

  factory SignInModel.fromJson( Map < String , dynamic>jsonData){
    return SignInModel(message: jsonData[Apikeys.message], token: jsonData[Apikeys.token]);
  }


}