import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/HTML_Course/Api.dart';
import 'package:pdf/Html_Course.dart';

class Svg_Course extends StatefulWidget {
  const Svg_Course({Key? key}) : super(key: key);

  @override
  _Svg_CourseState createState() => _Svg_CourseState();
}

class _Svg_CourseState extends State<Svg_Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SVG HTML',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Api())); },),
      ),
      body: ListView(
        children: [
          Text('Drawing shapes',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('SVG stands for Scalable Vector Graphics, and is used to draw shapes with HTML-style markup. \n'
            'It offers several methods for drawing paths, boxes, circles, text, and graphic images.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Inserting SVG Images',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('An SVG image can be added to HTML code with just a basic image tag \n'
              'that includes a source attribute pointing to the image:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('SVG defines vector-based graphics in XML format.'
              ,textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
           Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Html_Cheat()));
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
