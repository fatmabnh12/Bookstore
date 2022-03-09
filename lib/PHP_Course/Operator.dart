import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/PHP_Course/Assign.dart';
import 'package:pdf/PHP_Course/Data_types.dart';
import 'package:pdf/PHP_Course/Variables.dart';
import 'package:google_fonts/google_fonts.dart';

class Operator extends StatefulWidget {
  const Operator({Key? key}) : super(key: key);

  @override
  _OperatorState createState() => _OperatorState();
}

class _OperatorState extends State<Operator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Variables',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Data_types() ));
        },),
      ),
      body: ListView(
        children: [
          Text('Operators',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Operators carry out operations on variables and values.',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/p11.png',width: 200,height: 200,),
          Divider(),
          Text('Arithmetic Operators',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Arithmetic operators work with numeric values to perform common arithmetical operations ',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/p12.png',width: 200,height: 200,),
          Divider(),
          Text('For example',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/p13.png',width: 200,height: 200,),
          Divider(),
          Text('Increment & Decrement',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The increment operators are used to increment a variable`s value. \n'
          'The decrement operators are used to decrement a variable`s value. ',
            style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/p14.png',width: 200,height: 200,),
          Divider(),
          Text('Increment and decrement operators either precede or follow a variable.',
            style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/p15.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Assign()));
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
