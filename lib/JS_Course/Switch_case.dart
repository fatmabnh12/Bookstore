import 'package:flutter/cupertino.dart';
import 'package:pdf/JS_Course/Else_stat.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/JS_Course/If_stat.dart';

import 'Boucle.dart';

class Switch_case extends StatefulWidget {
  const Switch_case({Key? key}) : super(key: key);

  @override
  _Switch_caseState createState() => _Switch_caseState();
}

class _Switch_caseState extends State<Switch_case> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The switch Statement',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>If_stat()));
        },),
      ),
      body: ListView(
        children: [
          Text('Switch',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('But what if you need to test for multiple conditions?'
              ' In those cases, writing if else statements for each condition might not be the best solution.'
            'Instead, we can use the switch statement to perform different actions based on different conditions.'
           'Here`s what that looks like:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js43.png',width: 200,height: 200,),
          Divider(),
          Text('The switch expression is evaluated once. \n'
              'The value of the expression is compared with the values of each case, and if there’s a match,\n '
              'that block of code is executed.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(),
          Text('Let`s look at another example:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js44.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('The Default keyword',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Often there will be no match, but we still need the program to output something. \n'
              'For this we use the default keyword, which specifies the code to run if there’s no case match.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js45.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Boucle()));
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
