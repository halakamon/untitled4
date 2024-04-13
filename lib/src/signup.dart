import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/coure/api/dio_consumer.dart';
import 'package:untitled4/slider/Board.dart';
import 'package:untitled4/src/cubit/states.dart';
import 'package:untitled4/src/cubit/user_cubit.dart';
import 'package:untitled4/src/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>userCubit(DioCunsumer(dio :Dio())),
      child: BlocConsumer<userCubit,states>(
        listener: ( context,state) {
            if (state is SignUpsuccesState){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("succesed")));
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                           return Board();} ));
               
            }else {
              
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed")));
            }
        },
      builder: ( context,state) {
        return Scaffold(
         appBar: AppBar(title: Text("SignUp",style: TextStyle(
          color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold
        
         ),),
         backgroundColor: Colors.blue,
         ),
          body: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Form( key: context.read<userCubit>().signUpFormKey,
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    Text("Creat your new Account",style: TextStyle(fontSize: 17),textAlign: TextAlign.left,),
                     Padding(
                    padding: const EdgeInsets.all(30),
                    child: TextField(
                    decoration: InputDecoration(
                    hintText: ("User Name"),
                     prefixIcon: const Icon(Icons.person),
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
                
                   Padding(
                    padding: const EdgeInsets.all(30),
                    child: TextField(
                    decoration: InputDecoration(
                    hintText: (" Phone Number"),
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
                
 Padding(
                    padding: const EdgeInsets.all(30),
                    child: TextField(
                    decoration: InputDecoration(
                    hintText: (" Email"),
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
                

                 Padding(
                    padding: const EdgeInsets.all(30),
                    child: TextField(
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
                     )
                    ),
                    
                    
                    ),
                  ),
                
                Padding(
                    padding: const EdgeInsets.all(30),
                    child: TextField(
                    decoration: InputDecoration(
                    hintText: ("Comfirm PassWord"),
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
                     )
                    ),
                    
                    
                    ),
                  ),
                 
                   const SizedBox(height: 50,),
                state is SignUploadingState? CircularProgressIndicator():  MaterialButton(
                    padding: EdgeInsets.all(20),
                    color: Colors.blue,
                    child: const Text("SignUp",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                    
                    
                    ),
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                
                    ),
                    
                    
                    
                    onPressed: (){
                       context.read<userCubit>().SignUp();
                    }),
                
                     const SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return SignUp();
                
                        }) );
                      },
                    child: Text("Already have an Account. "
                    ,
                     style: TextStyle(
                      color: Colors.black, fontSize: 17,
                     ),
                    ),
                    ),
                    // const SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return loginscreen();
                
                        }) );
                      },
                      
                    child: Text("Signin ",
                     style: TextStyle(
                      color: Colors.blue, fontSize: 20,
                     ),
                    ),
                    ),
                  ],
                ),
              ),
            ),
          ) ,   
      
        );
      }
      ),
    );
  }
}