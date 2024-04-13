/*import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/counter/cubit/cubit.dart';
import 'package:untitled4/counter/cubit/states.dart';

class counterscreen extends StatelessWidget {
  int counter=1;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=> CounterCubit(),
      child: BlocConsumer<CounterCubit,counterstates>(
        listener: (context,State){
          if(State is counterinitialstate  )print("initstate");
             if(State is counterminusstate  )print("minstate");   if(State is counterplusstate  )print("plustate");
        },
        builder: (context,State) {
        return  Scaffold(
           appBar: AppBar(title: Text("counter",style: TextStyle(color: Colors.white,fontSize: 30),),
           backgroundColor: Colors.blue,
           
           
           ),
        body:Center(
        
          child: Column(
            children: [
              Center(
                child: TextButton(onPressed: (){
              CounterCubit.get(context).minus();
              counter--;
                 
                }, child: Text("min",style: TextStyle(color: Colors.blue,fontSize: 30,),),
                ),
                
                    
                
              ),
              Center(child: Text(
                '${CounterCubit.get(context).counter}',style: TextStyle(color: Colors.blue,fontSize: 30,
          
                )
          
              ),
              
              
              ),
               Center(
                child: TextButton(onPressed: (){
              CounterCubit.get(context).plus();
              counter++;
                 
                }, child: Text("pls",style: TextStyle(color: Colors.blue,fontSize: 30,),
                ),
                
                )
                
              ),
            ],
          ),
        ),
        
        
        );},
        
      ),
    );
  }
}*/