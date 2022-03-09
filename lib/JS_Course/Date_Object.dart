import 'package:flutter/cupertino.dart';
import 'package:pdf/JS_Course/Math_Object.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'DOM_Course.dart';
class Date_Object extends StatefulWidget {
  const Date_Object({Key? key}) : super(key: key);

  @override
  _Date_ObjectState createState() => _Date_ObjectState();
}

class _Date_ObjectState extends State<Date_Object> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Date Object',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Math_Object()));
        },),
      ),
      body: ListView(
        children: [
          Text('The Date Object',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The Date object enables us to work with dates. \n'
              'A date consists of a year, a month, a day, an hour, a minute, a second, and milliseconds.\n'
              'Using new Date(), create a new date object with the current date and time',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js113.png',width: 200,height: 200,),
          Divider(),
          Text('The other ways to initialize dates allow for the creation of new date objects from the specified date and time',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js114.png',width: 200,height: 200,),
          Divider(),
          Text('Date Methods',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('When a Date object is created, a number of methods make it possible to perform operations on it.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js115.png',width: 200,height: 200,),
          Divider(),
          Text('For example:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js116.png',width: 200,height: 200,),
          Divider(),
          Text('Let`s create a program that prints the current time to the browser once every second.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js117.png',width: 200,height: 200,),
          Divider(),
          Text('We declared a function printTime(), which gets the current time from the date object, and prints it to the screen.\n'
            'We then called the function once every second, using the setInterval method.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>DOM_Course()));
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
