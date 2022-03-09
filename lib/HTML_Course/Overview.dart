import 'package:code_editor/code_editor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/HTML_Course/HTML_Struc.dart';
import 'package:pdf/Html_Course.dart';
class Overview extends StatefulWidget {
  const Overview({Key? key}) : super(key: key);

  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('What is HTML ?',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
    backgroundColor: Colors.white,
    leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
    Navigator.push(context,MaterialPageRoute(builder:(context)=>Html_Course())); },),
        ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(4)),
          Text('What is HTML ?',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(8)),
          Text('HTML stands for HyperText Markup Language \n'
          'Unlike a scripting or programming language that uses a script to perform \n'
              'functions, a markup language uses tags to identify content',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w800,color: Colors.black54),),
          Padding(padding: EdgeInsets.all(4)),
          Text('Here is an example of an HTML tag :',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Image.asset('assets/images/tag.png',width: 50,height: 50,),
          Padding(padding: EdgeInsets.all(5)),
          Text('The web structure',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(8)),
          Text('The ability to code using HTML is essential for any web professional \n'
          'Acquiring the skill should be the starting point for anyone who is learning how \n'
          'to create content for the web ',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w800,color: Colors.black54),),
           Padding(padding: EdgeInsets.all(8)),
          Text('Modern Web Design',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(8)),
          Text('HTML : Structure',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600),),
          Text('CSS : Presentation',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600),),
          Text('Javascript : Behavior ',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600),),
          Text('PHP or similar : Backend',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600),),
          Text('CMS: Content management',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600),),
          ElevatedButton.icon(
            onPressed:(){
            Navigator.push(context,MaterialPageRoute(builder:(context)=>HTML_Structure()));},
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
