/* import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/slider/layout/cubit/states.dart';
import 'package:untitled4/slider/layout/moudels/p1.dart';
import 'package:untitled4/slider/layout/moudels/p2.dart';
import 'package:untitled4/slider/layout/moudels/p3.dart';

class layCubit extends Cubit<laystates>{
 layCubit (): super(Initialstate());
 static layCubit get(context) => BlocProvider.of(context);

 int currentIndex =0;
 List<BottomNavigationBarItem> BottomItem =[
  BottomNavigationBarItem(icon: Icon(Icons.alarm,),
  label: "alarm"),

   BottomNavigationBarItem(icon: Icon(Icons.phone,),
  label: "phone"),

   BottomNavigationBarItem(icon: Icon(Icons.settings,),
  label: "settings"),
 ];
List<Widget> Screens = [

  P1(),
  P2(),
  P3(),
];
 void changeButtomNavBar(index){
  currentIndex = index;
  emit(buttomNavstate());
 }
}*/