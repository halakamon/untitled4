import 'package:untitled4/src/cubit/user_cubit.dart';

// ignore: camel_case_types
abstract class states {}

final class InitState extends states {}
final  class SignInloadingState extends states {}
final  class SignInsuccesState extends states {}
final class  SignInFaliureState extends states {
final String errorMessage ;

  SignInFaliureState({required this.errorMessage});
}
final  class SignUploadingState extends states {}
final  class SignUpsuccesState extends states {



}
final class  SignUpFaliureState extends states {
final String errorMessage ;

  SignUpFaliureState({required this.errorMessage});
}