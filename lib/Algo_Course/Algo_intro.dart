import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/Algo_Course.dart';
import 'package:pdf/Algo_Course/Carac.dart';

import '../ITBasics.dart';

class Algo_intro extends StatefulWidget {
  const Algo_intro({Key? key}) : super(key: key);

  @override
  _Algo_introState createState() => _Algo_introState();
}

class _Algo_introState extends State<Algo_intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Introduction',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
       backgroundColor: Colors.white,
      leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
       Navigator.push(context,MaterialPageRoute(builder:(context)=>Algo_Course()));
    },),),
      body: ListView(
        children: [
          Text('What is an Algorithm ?',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('In this course, we will learn what algorithms are with the help of examples.\n'
             'In computer programming terms, an algorithm is a set of well-defined instructions to solve a particular problem.\n'
              ' It takes a set of input and produces a desired output. \n'
              ' For example,\n'
              'An algorithm to add two numbers\n'
              'Take two number inputs \n'
              'Add numbers using the + operator \n'
              'Display the result',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/al1.png',width: 300,height: 300,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Carac()));
            },
            label: Text('Continue',style: GoogleFonts.poppins(fontSize: 12,color: HexColor('#FD7E77'),fontWeight: FontWeight.w800),),
            icon:Icon(Icons.arrow_forward_sharp,
              color: HexColor('#FD7E77'),
              size: 12,),
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              primary: Colors.white,
            ),
          ),


        ],
      ),
    );
  }
}
