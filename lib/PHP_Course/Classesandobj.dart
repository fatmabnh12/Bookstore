import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/PHP_Course/Read.dart';

import 'Constr.dart';

class Classesandobj extends StatefulWidget {
  const Classesandobj({Key? key}) : super(key: key);

  @override
  _ClassesandobjState createState() => _ClassesandobjState();
}

class _ClassesandobjState extends State<Classesandobj> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Classes & objects',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Read()));
        },),
      ),
      body: ListView(
        children: [
          Text('PHP Classes',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('In PHP, a class can include member variables called properties for defining the features of an object,'
              ' and functions, called methods, for defining the behavior of an object. \n '
              'A class definition begins with the keyword class, followed by a class name. \n'
              'Curly braces enclose the definitions of the properties and methods belonging to the class.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/p71.png',width: 200,height: 200,),
          Divider(),
          Text('The code above defines a Person class that includes an age property and a speak() method.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The public keyword specifies that the member can be accessed from anywhere in the code.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.red),),
          Divider(),
          Text('PHP Objects',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The process of creating an object of a class is called instantiation.\n'
            'To instantiate an object of a class, use the keyword new, as in the example below:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/p72.png',width: 200,height: 200,),
          Divider(),
          Text('In the code above, bob is an object of the Person class.'
              'To access the properties and methods of an object, use the arrow (->) construct, as in:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/p73.png',width: 200,height: 200,),
          Divider(),
          Text('Let`s define the Person class, instantiate an object, make an assignment, and call the speak() method:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/p75.png',width: 200,height: 200,),
          Divider(),
          Text('keyword this',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('_this is a pseudo-variable that is a reference to the calling object. ',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/p76.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Constr()));
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
