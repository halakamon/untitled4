import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled4/coure/utils/app_text_style.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1),
    (){
       GoRouter.of(context).push("/loginscreen");

    },
    );
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: Text("Dalel",style: CustomTextStyles.pacifico,),
        
       ),

    );
  }
}