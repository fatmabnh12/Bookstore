import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/JS_Course/Alerts.dart';
import 'package:pdf/JS_Course/Creation.dart';

class Intro_object extends StatefulWidget {
  const Intro_object({Key? key}) : super(key: key);

  @override
  _Intro_objectState createState() => _Intro_objectState();
}

class _Intro_objectState extends State<Intro_object> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Introducing Objects',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Alerts()));
        },),
      ),
      body: ListView(
        children: [
          Text('JavaScript Objects',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('JavaScript variables are containers for data values. Objects are variables too, but they can contain many values.'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Think of an object as a list of values that are written as name:value pairs, \n'
              ' with the names and the values separated by colons.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Example :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js81.png',width: 200,height: 200,),
          Divider(),
          Text('These values are called properties:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js82.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('Object Properties',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('You can access object properties in two ways.',textAlign: TextAlign.center,style:GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js83.png',width: 200,height: 200,),
          Divider(),
          Text('This example demonstrates how to access the age of our person object.',
            textAlign: TextAlign.center,style:GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js84.png',width: 200,height: 200,),
          Divider(),
          Text('JavaScript`s built-in length property is used to count the number of characters in a property or string.',
            textAlign: TextAlign.center,style:GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js85.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('Object Methods',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('An object method is a property that contains a function definition. \n'
            'Use the following syntax to access an object method',
            textAlign: TextAlign.center,style:GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js86.png',width: 200,height: 200,),
          Divider(),
          Text('As you already know, document.write() outputs data. \n'
              'The write() function is actually a method of the document object.',
            textAlign: TextAlign.center,style:GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js87.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Creation()));
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
