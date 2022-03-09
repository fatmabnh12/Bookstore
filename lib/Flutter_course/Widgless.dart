import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Flutter_course/Navigate.dart';

import 'Widgetful.dart';

class Widgless extends StatefulWidget {
  const Widgless({Key? key}) : super(key: key);

  @override
  _WidglessState createState() => _WidglessState();
}

class _WidglessState extends State<Widgless> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Widgetful()));
        },),
      ),
      body: ListView(
        children: [
          Text('Stateful Widget',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('A Stateful Widget is a bit different. \n'
              ' It`s actually two classes: a State object and the widget itself. \n'
              ' The purpose of this class is to persist state when Flutter rebuilds widgets. ',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('In Flutter, the concept of state is defined by two things: \n'
            'The data used by the widget might change. \n'
            'The data can`t be read synchronously when the widget is built. (All state must be established by the time the build method is called). ',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('setState',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Is used to tell Flutter that it needs to rebuild, usually because something has changed and the screen needs to reflect that. In actuality, after setState is called, Flutter knows that it needs to call the build method again.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/d8.png',width: 300,height: 300,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Navigate()));
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
