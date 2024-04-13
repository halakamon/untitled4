import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled4/slider/widgets/custombuttom.dart';
import 'package:untitled4/slider/widgets/customslider.dart';

class Board extends StatelessWidget {
  const Board({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              SizedBox(height:20 ,),
              Text("data",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),),
            SizedBox(height:30),
                BoardBody(),
                custombtm(),
                SizedBox(height: 20,)
            ],),
          ),
        ),
      ),
    );
    
  }
}

  