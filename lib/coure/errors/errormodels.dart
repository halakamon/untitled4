 import 'package:untitled4/coure/api/end_points.dart';
import 'package:untitled4/src/cubit/states.dart';

class ErrorModel{
 final int status;
final String errorMessage;

  ErrorModel( {required this.status, required this.errorMessage});
  factory ErrorModel.fromJson (Map<String,dynamic> jsonData){
    return ErrorModel(
    status: jsonData[Apikeys.status],
    errorMessage: jsonData[Apikeys.errorMessage],
    
    );
    
    
  }

}  