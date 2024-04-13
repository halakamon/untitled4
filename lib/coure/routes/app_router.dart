//import 'dart:js';

//import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled4/src/login.dart';

import 'package:untitled4/src/splashview.dart';

final GoRouter router=GoRouter(routes: [
GoRoute(path: "/",
builder: (context,State)=>const SplashView(),),
GoRoute(path: "/loginscreen",
builder: (context,State)=>const loginscreen(),),


//GoRoute(path: "/",builder: (context,State)=>password(),),


],
);
