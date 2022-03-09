import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:pdf/JS_Course/Logical.dart';
import 'package:hexcolor/hexcolor.dart';

import 'If_stat.dart';

class String_op extends StatefulWidget {
  const String_op({Key? key}) : super(key: key);

  @override
  _String_opState createState() => _String_opState();
}

class _String_opState extends State<String_op> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('String Operators',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Logical()));
        },),
      ),
      body: ListView(
        children: [
          Text('String Operators',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(color: Colors.black54,),
          Text('We can use concatenation (represented by the + sign) to build strings made up of multiple smaller strings, '
              'or by joining strings with other types. Check it out:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(color: Colors.black54,),
          Image.asset('assets/images/js39.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>If_stat()));
            },
            label: Text('Continue',style: GoogleFonts.poppins(fontSize: 12,color: HexColor('#FD7E77'),fontWeight: FontWeight.w800),),
            icon:Icon(Icons.arrow_forward_sharp,
              color: HexColor('#FD7E77'),
              size: 12,),
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              primary: Colors.white,
            ),
          )




        ],
      ),
    );
  }
}
