import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/CSS_Course/Background_image.dart';
import 'package:pdf/CSS_Course/Widthandheight.dart';
import 'package:flutter/material.dart';

class Background_color extends StatefulWidget {
  const Background_color({Key? key}) : super(key: key);

  @override
  _Background_colorState createState() => _Background_colorState();
}

class _Background_colorState extends State<Background_color> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Background-color',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
          backgroundColor: Colors.white,
          leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Widthandheight()));
          },)
      ),
      body: ListView(
        children: [
          Text('The background-color Property',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The background-color property is used to specify the background color of an element.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('The HTML :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/tag177.png',width: 200,height: 200,),
          Divider(),
          Text('The CSS :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/tag178.png',width: 200,height: 200,),
          Divider(),
          Text('Result:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/tag179.png',width: 200,height: 200,),
          Divider(),
          Text('The background-color Values ',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Padding(padding: EdgeInsets.all(4)),
          Text('The color of the background can be defined using three different formats: a color name, hexadecimal values, and RGB.\n'
            'In the example below, the body, h1, and p elements are assigned different background colors:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('The HTML ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/tag180.png',width: 200,height: 200,),
          Divider(),
          Text('The CSS ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/tag181.png',width: 200,height: 200,),
          Divider(),
          Text('Result ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/tag182.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Background_image()));},
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
