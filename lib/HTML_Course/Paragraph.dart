import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/HTML_Course/Format.dart';
import 'package:pdf/HTML_Course/Head.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Paragraph extends StatefulWidget {
  const Paragraph ({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<Paragraph> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paragraphs',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Head())); },),
      ),
      body: ListView(
        children: [
          Text('The <p> element ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('To create a paragraph, simply type in the <p> element with its opening \n'
              'and closing tags:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/tag16.png',width: 200,height: 200,),
          Divider(),
          Text('Result',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/tag17.png',width: 200,height: 200,),
          Divider(),
          Text('Single line break ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Use the <br /> tag to add a single line of text without starting a new \n'
              'paragraph:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Image.asset('assets/images/tag18.png',width: 100,height: 100,),
          Divider(),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('The <br /> element is an empty HTML element \n'
              'It has no end.'
              ,textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
           Divider(),
           Text('Opening the HTML file in the browser shows that a single line break has been \n'
               ' added to the paragraph:',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
            Divider(),
           Image.asset('assets/images/tag19.png',width: 200,height: 200,),
           Divider(),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('The <br /> element has no end tag. '
              ,textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
            Padding(padding: EdgeInsets.all(4)),
              ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Format()));},
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
