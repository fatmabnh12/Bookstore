import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/JS_Course/If_stat.dart';

class Else_stat extends StatefulWidget {
  const Else_stat({Key? key}) : super(key: key);

  @override
  _Else_statState createState() => _Else_statState();
}

class _Else_statState extends State<Else_stat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The else Statement',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>If_stat()));
        },),
      ),
      body: ListView(
        children: [
          Text('The else Statement',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('We can use the else statement to specify a block of code that will execute if the condition is false. \n'
              ' Like this',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js43.png',width: 200,height: 200,),
          Divider(),
          Text('The else Statement',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js44.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('Let`s translate that example. It says: \n'
          '- If myNum1 is greater than myNum2, alert "This is my first condition " \n'
           '- Else, alert "This is my second condition". \n'
            'So the browser will print out the second condition, as 7 is not greater than 10.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(color: Colors.black54,),
          Image.asset('assets/images/js45.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Else_stat()));
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
