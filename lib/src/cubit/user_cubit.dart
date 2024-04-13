
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/Models/signin_model.dart';
import 'package:untitled4/Models/signup_model.dart';
import 'package:untitled4/coure/api/api_consumer.dart';
import 'package:untitled4/coure/api/end_points.dart';
import 'package:untitled4/coure/errors/exceptions.dart';
import 'package:untitled4/src/cubit/states.dart';


class userCubit extends Cubit<states>{
  userCubit(this.api ) : super (InitState());
  final ApiConsumer api;
GlobalKey<FormState> signInFormKey =GlobalKey();
 TextEditingController SignInEmail = TextEditingController();
TextEditingController SignInPassWord = TextEditingController();

GlobalKey<FormState> signUpFormKey =GlobalKey();
TextEditingController SignUpName = TextEditingController();
TextEditingController SignUpEmail = TextEditingController();
TextEditingController SignUpPhone = TextEditingController();
TextEditingController SignUpPassWord = TextEditingController();
TextEditingController SignUpLocation = TextEditingController();
TextEditingController SignUpConfirmPassWord = TextEditingController();





SignUpModel? user1;
 SignUp()async{
try{ emit(SignUploadingState());

final response = await api.Post(
  endpoints.signup,
 isFormData: true,
data: {
 Apikeys.name : SignUpName.text,
 Apikeys.Phone : SignUpPhone.text,
 Apikeys.email :SignUpEmail.text,
 Apikeys.password: SignUpPassWord.text,
 Apikeys.comfirmpassword : SignUpConfirmPassWord.text,
 Apikeys.location : SignUpLocation.text,
});  
   final signUpModel =  SignInModel.fromJson(response!);
emit(SignUpsuccesState(
  
));}

on ServerException catch(e){
  emit(SignUpFaliureState(errorMessage:e.errorModel.errorMessage));
 
}
 }

SignInModel? user;   
   SignIn() async{
 try{
  emit(SignInloadingState());

   final response= await api.Post(
      
      endpoints.Signin,
    data:  {
        Apikeys.email: SignInEmail.text,
        Apikeys.password: SignInPassWord.text,

      }

    );
   final signInModel =  SignInModel.fromJson(response!);
  /*  final decodedtoken= JwtDecoder.decode(user!.token);
cacheHelper().saveData(Key: Apikeys.token,value: user!.token);
cacheHelper().saveData(key:Apikeys.id,value:decodedtoken[Apikeys.id]);*/

emit(SignInsuccesState());}
on ServerException catch(e){

emit(SignInFaliureState(errorMessage: e.errorModel. errorMessage));
}

   }

}

