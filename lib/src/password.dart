import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

class password extends StatefulWidget {
  const password({super.key});

  @override
  State<password> createState() => _SignUpState();
}

class _SignUpState extends State<password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  /*   appBar: AppBar(title: Text("Forget PassWord",style: TextStyle(
    color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold

     ),),
     backgroundColor: Colors.blue,),*/
    appBar: AppBar( backgroundColor: Colors.blue,
   title: Text("Forget the password?",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
   ),

    ),
      
        body: Container(
child: Column(
children: <Widget>[
 

 // image: DecorationImage(image: AssetImage("assets/images/background.jpg"))
 Padding(
   padding: const EdgeInsets.all(10),
   child: Align(
     //
     alignment: Alignment.topLeft, 
   
     child: Text("Enter your mobile number ",textAlign: TextAlign.left,style: TextStyle(fontSize:20,color: Colors.black ),),
   
   ),
 ),
 Padding(
   padding: const EdgeInsets.all(10),
   child: TextField(
    decoration: InputDecoration(
      hintText: ("Email or mobile number"),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      
    ),
    
   ),
 ),
 MaterialButton(
  color: Colors.blue,
  onPressed: (){

 },
 child:Text("Cancel",style:TextStyle(color: Colors.white) ,) ,
 ),
  MaterialButton(color: Colors.blue,
    onPressed: (){

 },
 child:Text("Search",style:TextStyle(color: Colors.white) ,) ,
 ),


 


],

),

        ),

    );
  }
}