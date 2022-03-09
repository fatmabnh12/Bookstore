import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/CSS_Course.dart';
import 'package:pdf/CSS_Course/Inline.dart';

class Definition extends StatefulWidget {
  const Definition({Key? key}) : super(key: key);

  @override
  _DefinitionState createState() => _DefinitionState();
}

class _DefinitionState extends State<Definition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('What is CSS ?',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
    backgroundColor: Colors.white,
    leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
    Navigator.push(context,MaterialPageRoute(builder:(context)=>Css_Course()));
    },)
        ),
      body: ListView(
        children: [
          Text('Welcome to CSS',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(color: Colors.black54,),
          Text('CSS stands for Cascading Style Sheets. \n'
          '- Cascading refers to the way CSS applies one style on top of another. \n'
          '- Style Sheets control the look and feel of web documents.'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 13),),
          Divider(),
          Text('CSS and HTML work hand in hand: \n'
              '- HTML sorts out the page structure. \n'
          '- CSS defines how HTML elements are displayed.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('To understand CSS, you should already have a basic knowledge of HTML.'
               'If you want to study HTML, check out the course  HTML.'
              ,textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
            Divider(),
          Text('Why use CSS ?',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('CSS allows you to apply specific styles to specific HTML elements. \n'
            'The main benefit of CSS is that it allows you to separate style from content \n'
            'Using just HTML, all the styles and formatting are in the same place,'
              ' which  \n becomes rather difficult to maintain as the page grows.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
            Divider(),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('All formatting can (and should) be removed from the HTML \n'
                'document and stored in a separate CSS file.'
              ,textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
          Divider(),
      ElevatedButton.icon(
        onPressed:(){
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Inline()));},
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
