import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/CSS_Course/Background_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/CSS_Course/Background_repeat.dart';

class Background_image extends StatefulWidget {
  const Background_image({Key? key}) : super(key: key);

  @override
  _Background_imageState createState() => _Background_imageState();
}

class _Background_imageState extends State<Background_image> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Background-image',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
          backgroundColor: Colors.white,
          leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Background_color()));
          },)
      ),
      body: ListView(
        children: [
          Text('The background-image Property',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The background-image property sets one or several background images in an element.\n '
              'To set a background-image for the <body> element.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('The CSS: ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag183.png',width: 200,height: 200,),
          Divider(),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('The url specifies the path to the image file. Both relative and absolute paths are supported.'
              ,textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
          Divider(),
          Image.asset('assets/images/tag184.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('Background-image can be set not only for the whole page, but for individual elements, as well.'
            'Below we set a background image for the <p> element.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(color: Colors.black54,),
          Text('The HTML : ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag185.png',width: 200,height: 200,),
          Divider(),
          Text('The CSS : ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag186.png',width: 200,height: 200,),
          Divider(),
          Text('Result: ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag187.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Background_repeat()));},
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
