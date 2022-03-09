import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/CSS_Course/Color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:pdf/CSS_Course/Vertc.dart';
class Aligntext extends StatefulWidget {
  const Aligntext({Key? key}) : super(key: key);

  @override
  _AligntextState createState() => _AligntextState();
}

class _AligntextState extends State<Aligntext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Align Text Horizontally',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
          backgroundColor: Colors.white,
          leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Colorhtml()));
          },)
      ),
      body: ListView(
        children: [
          Text('The text-align property',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('The text-align property specifies the horizontal alignment of text in an \n '
              'element. By default, text on your website is aligned to the left. \n '
              ' However, at times you may require a different alignment.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('text-align property values are as follows: left, right, center, and justify.',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('The HTML ',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag139.png',width: 200,height: 200,),
          Divider(),
          Text('The CSS',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag140.png',width: 200,height: 200,),
          Text('Result :',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag141.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Vertc()));
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
