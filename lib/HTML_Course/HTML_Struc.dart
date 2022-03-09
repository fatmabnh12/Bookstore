import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/HTML_Course/Overview.dart';
import 'package:pdf/HTML_Course/HTML_Page.dart';

class HTML_Structure extends StatefulWidget {
  const HTML_Structure({Key? key}) : super(key: key);

  @override
  _HTML_StructureState createState() => _HTML_StructureState();
}

class _HTML_StructureState extends State<HTML_Structure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Basic HTML document structure',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
          backgroundColor: Colors.white,
          leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Overview())); },),
        ),
        body: ListView(
         children: [
           Divider(),
           Text('The <html> tag',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
           Padding(padding: EdgeInsets.all(5)),
           Text('Although various versions have been released over the years, HTML basics \n'
           'remain the same.',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(),
           Text('The structure of an HTML document has been compared with that of a sandwich.\n'
           'The html document has opening and closing HTML tags',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(),
           Text('These tags, like the bread in the sandwich, surround everything else \n'
             ,textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
            Image.asset('assets/images/tag2.png',width: 100,height: 100,),
           Padding(padding: EdgeInsets.all(5)),
           Text('Immediately following the opening HTML tag, you will find the head of the \n'
             'document, which is identified by opening and closing head tags.',
             textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
            Divider(),
             Text('The head of an HTML file contains all of the non-visual elements that help \n '
               'make the page work.',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
            Image.asset('assets/images/tag3.png',width: 100,height: 100,),
            Divider(),
            Text('The <body> tag',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 18),),
           Padding(padding: EdgeInsets.all(8)),
           Text('The body tag follows the head tag.\n'
             'All visual-structural elements are contained within the body tag.',textAlign:TextAlign.center,
             style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Padding(padding: EdgeInsets.all(4)),
           Text('Basic HTML Structure',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
           Image.asset('assets/images/tag3.png',width: 100,height: 100,),
           ElevatedButton.icon(
             onPressed:(){
               Navigator.push(context,MaterialPageRoute(builder:(context)=>HTML_Page()));},
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
