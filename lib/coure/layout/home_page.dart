/*import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/src/layout/cubit/cubit.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  
    
     BlocProvider(
      create: (BuildContext context)=>layCubit(),
       child : BlocConsumer(
        listener: (context,State){},
        builder: (context,State){
          var cubit = layCubit.get(context);
         return Scaffold(
       
         /*    appBar : AppBar(
              title: Text("Home Page"),
              
              
             ) ,*/
              body:  cubit.Screens [cubit.currentIndex],
             bottomNavigationBar: BottomNavigationBar(
                 currentIndex: cubit.currentIndex,                     
              items: cubit.BottomItem ,
              onTap: (index){
              cubit.changeButtomNavBar(index);

              },
              ),
        
          );
        }
       ),
     );
    
  }
}*/