import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/SQL_Course/Between.dart';
import 'package:pdf/SQL_Course/Limit.dart';

class Where extends StatefulWidget {
  const Where({Key? key}) : super(key: key);

  @override
  _WhereState createState() => _WhereState();
}

class _WhereState extends State<Where> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Where Statement',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Limit()));
        },),
      ),
      body: ListView(
        children: [
          Text('The WHERE Statement',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The WHERE clause is used to extract only those records that fulfill a specified criterion. \n'
            'The syntax for the WHERE clause:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/s26.png',width: 200,height: 200,),
          Divider(),
          Text('Consider the following table:',
            textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/s27.png',width: 200,height: 200,),
          Divider(),
          Text('In the above table, to SELECT a specific record:',
            textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/s28.png',width: 200,height: 200,),
          Divider(),
          Image.asset('assets/images/s29.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Between()));
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
