import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Flutter_course/Widgetful.dart';

import 'Yaml_file.dart';

class Wid_intro extends StatefulWidget {
  const Wid_intro({Key? key}) : super(key: key);

  @override
  _Wid_introState createState() => _Wid_introState();
}

class _Wid_introState extends State<Wid_intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Yaml_file()));
        },),
      ),
      body: ListView(
        children: [
          Text('Widgets',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The core concept of the Flutter framework is In Flutter, Everything is a widget. Widgets are basically user interface components used to create the user interface of the application.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('In Flutter, the application is itself a widget. '
              'The application is the top- level widget and its UI is build using one or more children (widgets),'
              ' which again build using its children widgets. '
              'This combinability feature helps us to create a user interface of any complexity.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/d6.png',width: 200,height: 200,),
          Divider(),
          Text('We`re going to explain each component of this widget tree',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Scaffold: is in charge of implementing the basic structure of the visual template. \n'
              'AppBar: displays a bar at the top of the application. \n'
              'Center: it is a layout type widget (design), which allows the content to be centered on its parent. \n'
               'Column: it is also a layout type widget, which allows a list of widgets to be arranged vertically. \n'
              'Text: display text on the screen. \n'
            'FloatingActionButton: This widget features an on-screen button.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Widgetful()));
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
