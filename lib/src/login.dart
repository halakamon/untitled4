//import 'package:untitled4/coure/utils/app_assets.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/coure/api/dio_consumer.dart';
import 'package:untitled4/slider/Board.dart';
import 'package:untitled4/src/cubit/states.dart';
import 'package:untitled4/src/cubit/user_cubit.dart';
import 'package:untitled4/src/password.dart';
import 'package:untitled4/src/signup.dart';



class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

// ignore: camel_case_types
class _loginscreenState extends State<loginscreen> {
  bool _isSecurePassword = false;

  
  @override
  Widget build(BuildContext context) {
    return 
     
       BlocProvider(
        create:(BuildContext context) =>userCubit(DioCunsumer(dio:Dio())) ,
        
         
         child: BlocConsumer<userCubit,states> (
          listener: ( context, state) { 
            if (state is SignInsuccesState){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("succed")));
                 Navigator.of(context).push(MaterialPageRoute(builder: (context){
                           return const Board();} ));
            }else {
              
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed")));
            }
           },
          builder: ( context,state) {  
          return Scaffold(
            
             
            
          body: Container(
           
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
           child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            
           
          
            child: SingleChildScrollView(
              child: Form(
                key: context.read<userCubit>().signInFormKey,
                child: Column(
                          children:<Widget> [
                
                //SizedBox(height: 20,),
                
                 Image.asset("assets/images/R.png",
                 
                width: 500,height: 300,
                ), 
                
                const SizedBox(height: 50,),
                const Text("Welcome",style: TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold),),
                const Text("Please Signin to your Account to continue with App",style: TextStyle(color: Colors.black,fontSize: 17),),
                const SizedBox(height: 50,),
                          Padding(
                padding: const EdgeInsets.all(30),
                child: TextField(
                decoration: InputDecoration(
                hintText: ("Email Or Phone Number"),
                 prefixIcon: const Icon(Icons.email),
                 enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                color: Colors.blue, width: 2.3,
                )
                
                 ),
                 disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.red,width: 2.3),
                
                 ),
                 focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.green,width: 2.3),
                 )
                ),
                
                
                ),
                          ),
                
                
                          
                           // const SizedBox(height: 4),
                          
                
                 
                 
                  Padding(
                    
                    padding: const EdgeInsets.all(30),
                    child: TextField(
                       
                      obscureText: _isSecurePassword,
                    decoration: InputDecoration(
                     
                    hintText: ("PassWord"),
                     prefixIcon: const Icon(Icons.lock),
                     enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                    color: Colors.blue, width: 2.3,
                    )
                    
                     ),
                     disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.red,width: 2.3),
                    
                     ),
                     focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.green,width: 2.3),
                     ),
                     suffixIcon: togglePassword(),
                    ),
                    
                    
                    ),
                  ),
                  
                 //const SizedBox(height: 30),
                GestureDetector( 
                   onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return password();
                
                    }) );
                  },
                child: const Text("Forget The PassWord ?",
                 style: TextStyle(
                  color: Colors.blue, fontSize: 20,
                 ),
                ),
                ),
                          
                           const SizedBox(height: 30,),
                           state is SignInloadingState? CircularProgressIndicator(): MaterialButton(
                padding: const EdgeInsets.all(20),
                color: Colors.blue,
                child: const Text("LogIn",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                
                
                ),
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                
                ),
                
                
                
                onPressed: (){
                
                        context.read<userCubit>().SignIn();
                  }),            
                
                
                
                
                const SizedBox(height: 20,),
                
                const Text("Dont have an Account?",style: TextStyle(color: Colors.black,fontSize: 17),),
                
                 const SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const SignUp();
                
                    }) );
                  },
                  
                child: const Text("Sign Up ",
                 style: TextStyle(
                  color: Colors.blue, fontSize: 20,
                 ),
                ),
                ),
                
                          ],
                ),
              ),
            ),
          
          
          
           ),
          
          )
          
          );
          
           } ),
       );
    
    
  }

Widget togglePassword(){

  return IconButton(onPressed: (){
    setState(() {
      _isSecurePassword =!_isSecurePassword;
    });
  }, 
  icon:_isSecurePassword? const Icon(Icons.visibility_off): Icon(Icons.visibility));
}

}