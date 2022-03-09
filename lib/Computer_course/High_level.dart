import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/Computer_course/Low_level.dart';
import 'package:pdf/Computer_course/Basic_op.dart';

class High_level extends StatefulWidget {
  const High_level({Key? key}) : super(key: key);

  @override
  _High_levelState createState() => _High_levelState();
}

class _High_levelState extends State<High_level> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('High level',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Low_level()));
        },),),
      body: ListView(
        children: [
          Text('#2) High-level Language',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Independent of hardware \n'
            'Their codes are very simple and developers can read, write and debug as they are similar to English like statements. \n'
            'High-level Language can be further divided into three categories. \n'
            'Procedural Language: Code in the procedural language is a sequential step by step procedure,  \n'
              'that gives information like what to do and how to do. Languages such as Fortran, Cobol, Basic, C, and Pascal are a few examples of procedural language.'
            'Non-procedural Language: Code in non-procedural language specify what to do, but does not specify how to do. SQL, Prolog, LISP are a few examples of non-procedural language. \n'
            'Object-oriented Language: Use of objects in the programming language, where the code is used to manipulate the data. C++, Java, Ruby, and Python are a few examples of Object-oriented language.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Basic_op()));
            },
            label: Text('Continue',style: GoogleFonts.poppins(fontSize: 12,color: HexColor('#FD7E77'),fontWeight: FontWeight.w800),),
            icon:Icon(Icons.arrow_forward_sharp,
              color: HexColor('#FD7E77'),
              size: 12,),
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              primary: Colors.white,
            ),),



        ],
      ),
    );
  }
}
