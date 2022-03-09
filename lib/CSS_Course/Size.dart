import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:pdf/CSS_Course/Family.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/CSS_Course/Style.dart';

class Size extends StatefulWidget {
  const Size({Key? key}) : super(key: key);

  @override
  _SizeState createState() => _SizeState();
}

class _SizeState extends State<Size> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('font-family',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
          backgroundColor: Colors.white,
          leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Family()));
          },)
      ),
      body: ListView(
        children: [
          Text('The font-size Property',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('The font-size property sets the size of a font. One way to set the size of fonts \n '
              'on the web is to use keywords. For example xx-small, small, medium, large, \n '
              ' larger, etc.',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('The HTML ',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Image.asset('assets/images/tag120.png',width: 200,height: 200,),
          Divider(),
          Text('The CSS ',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag121.png',width: 200,height: 200,),
          Divider(),
          Text('Result: ',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Image.asset('assets/images/tag122.png',width: 200,height: 200,),
          Divider(),
          Text('You can also use numerical values in pixels or ems to manipulate font size.'
              'Setting the font size in pixel values (px) is a good choice when you need pixel accuracy,'
              ' and it gives you full control over the text size.',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(),
          Image.asset('assets/images/tag123.png',width: 200,height: 200,),
          Divider(),
          Image.asset('assets/images/tag124.png',width: 200,height: 200,),
          Padding(padding: EdgeInsets.all(4)),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Style()));},
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
