import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:pdf/HTML_Course/Attribute.dart';
import 'package:pdf/HTML_Course/Paragraph.dart';
import 'package:hexcolor/hexcolor.dart';

class Format extends StatefulWidget {
  const Format({Key? key}) : super(key: key);

  @override
  _FormatState createState() => _FormatState();
}

class _FormatState extends State<Format> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Formatting',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Paragraph())); },),
      ),
      body: ListView(
        children: [
          Text('Formatting elements',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('In HTML, there is a list of elements that specify text style.\n'
          'Formatting elements were designed to display special types of text:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/tag20.png',width: 200,height: 200,),
          Divider(),
          Text('Each paragraph in the example is formatted differently to demonstrate what \n'
              ' each tag does:',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/tag21.png',width: 200,height: 200,),
          Divider(),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('Browsers display <strong> as <b>, and <em> as <i>.'
                'However, the meanings of these tags differ: <b> and <i> define bold \n'
                'and italic text, respectively, while <strong> and <em> indicate that the text is "important".'
              ,textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Attribute()));},
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
