import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Sql_Course.dart';

import 'Select.dart';

class Intro_db extends StatefulWidget {
  const Intro_db({Key? key}) : super(key: key);

  @override
  _Intro_dbState createState() => _Intro_dbState();
}

class _Intro_dbState extends State<Intro_db> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Introduction to database',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Sql_Course()));
        },),
      ),
      body: ListView(
        children: [
          Text('Welcome to SQL',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Database is a collection of data that is organized in a manner that facilitates ease of access, as well as efficient management and updating. \n'
          'A database is made up of tables that store relevant information.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/s1.png',width: 200,height: 200,),
          Divider(),
          Text('Database Tables',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w600),),
          Divider(),
          Text('A table stores and displays data in a structured format consisting of columns and rows that are similar to those seen in Excel spreadsheets.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/s2.png',width: 200,height: 200,),
          Divider(),
          Text('Primary Keys',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w600),),
          Divider(),
          Text('A primary key is a field in the table that uniquely identifies the table records. \n'
            'The primary key`s main features: \n'
            '- It must contain a unique value for each row. \n'
            '- It cannot contain NULL values. \n'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/s3.png',width: 200,height: 200,),
          Divider(),
          Text('What is SQL ?',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w600),),
          Divider(),
          Text('SQL is used to access and manipulate a database.\n'
            'MySQL is a program that understands SQL\n'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('SQL can:'
              '- insert, update, or delete records in a database.\n'
            '- create new databases, table, stored procedures, views.\n'
            '- retrieve data from a database, etc. \n'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Select()));
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
