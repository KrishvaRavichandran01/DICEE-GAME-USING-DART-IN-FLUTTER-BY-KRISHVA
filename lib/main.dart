import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MaterialApp(
    home:Scaffold(backgroundColor:Colors.red,
        appBar:AppBar(backgroundColor: Colors.red,
     title:Center(
       child: Text("DICEE",style:TextStyle(
         color: Colors.white,
         fontStyle:FontStyle.italic,
       fontSize: 35,
       fontWeight: FontWeight.bold),
       ),
     )
        ),
        body:Dicee(),
    )
  ),
  );
}
class Dicee extends StatefulWidget {
  const Dicee({super.key});

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int leftbutton=1;
  int rightbutton=1;
  void changdicee(){

    leftbutton=Random().nextInt(6)+1;
    rightbutton= Random().nextInt(6)+1;
  }


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  return Center(
  child: Row(
  children: [


  Expanded(
  flex: 1,
  child: TextButton(

  onPressed: () {
    setState(() {
      print("dicee$leftbutton");
      changdicee();
    });
  },
  child: Image.asset('images/dice$leftbutton.png'),
  ),
  ),

  Expanded(
  flex: 1,
  child: TextButton(

  onPressed: () {
    setState(() {
      changdicee();
    });
  },
  child: Image.asset('images/dice$rightbutton.png'),
  ),
  ),


  ],
  ),
  );




  }
}
