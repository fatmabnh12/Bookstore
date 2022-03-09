import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/HTML_Course/Video.dart';
import 'package:flutter/material.dart';

import 'Api.dart';

class Bar extends StatefulWidget {
  const Bar({Key? key}) : super(key: key);

  @override
  _BarState createState() => _BarState();
}

class _BarState extends State<Bar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The progress element',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Video())); },),
      ),
      body: ListView(
        children: [
          Text('Progress Bar ',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('The <progress> element provides the ability to create progress bars on the web. \n'
            'The progress element can be used within headings, paragraphs, or anywhere else in the body.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Progress Element Attributes',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Text('Value: Specifies how much of the task has been completed. \n'
            'Max: Specifies how much work the task requires in total.'
            ,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Example ',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: Colors.redAccent,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/tag86.png',width: 200,height: 200,),
          Divider(),
          Text('Result',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: Colors.redAccent,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/tag87.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Api()));},
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
