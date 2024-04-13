import 'package:flutter/material.dart';
import 'package:untitled4/coure/layout/home_page.dart';

class custombtm extends StatelessWidget {
  const custombtm
({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,height: 50,
      child: MaterialButton( color: Colors.blueAccent,
       shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        
      ), onPressed: () { } ,
      
       child: const Text("Next",style: TextStyle(color: Colors.white,fontSize: 25)),
       
      )
     
      
       
     
       
    );
    
  } }
