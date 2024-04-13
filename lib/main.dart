import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/counter/bloc_observer.dart';
import 'package:untitled4/coure/routes/app_router.dart';
import 'package:untitled4/src/cubit/states.dart';

//import 'package:untitled4/src/login.dart';
//import 'package:untitled4/coure/utils/app_colors.dart';

//import 'package:untitled4/src/signup.dart';

void main() {
  Bloc.observer= MyBlocObserver();
  runApp(const MyApp());
  InitState();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {  
    return  MaterialApp.router(
     routerConfig : router,
    
debugShowCheckedModeBanner: false,
      
      
    );
}
}
