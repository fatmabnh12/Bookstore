import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/CSS_Course/Comments.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/CSS_Course/Size.dart';

class Family extends StatefulWidget {
  const Family({Key? key}) : super(key: key);

  @override
  _FamilyState createState() => _FamilyState();
}

class _FamilyState extends State<Family> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('font-family',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
          backgroundColor: Colors.white,
          leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Comments()));
          },)
      ),
      body: ListView(
        children: [
          Text('The font-family Property',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('The font-family property specifies the font for an element. \n'
              'There are two types of font family names: \n'
              '- font family: a specific font family (like Times New Roman or Arial) \n'
              '- generic family: a group of font families with a similar look (like Serif or Monospace)',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(),
          Text('Here is an example of different font styles:',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag115.png',width: 200,height: 200,),
          Divider(),
          Text('The HTML ',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag116.png',width: 200,height: 200,),
          Divider(),
          Text('The CSS ',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag117.png',width: 200,height: 200,),
          Divider(),
          Text('The font-family property should hold several font names as a "fallback system.'
              ' When specifying a web font in a CSS style, add more than one font name, in order to avoid unexpected behaviors.'
              ' If the client computer for some reason doesnt have the one you choose, it will try the next one. \n'
          'It is a good practice to specify a generic font family, to let the browser pick a \n'
              'similar font in the generic family, if no other fonts are available.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(),
          Image.asset('assets/images/tag119.png',width: 200,height: 200,),
          Divider(),
          Text('If the browser does not support the font Arial, it tries the next fonts \n '
              ' (Helvetica Neue, then Helvetica). If the browser doesnt have any of them, it will try the generic sans-serif.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Size()));},
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
