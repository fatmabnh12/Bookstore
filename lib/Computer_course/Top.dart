import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Computer_course/Keys.dart';
import 'package:pdf/Computer_course/Low_level.dart';

class Top extends StatefulWidget {
  const Top({Key? key}) : super(key: key);

  @override
  _TopState createState() => _TopState();
}

class _TopState extends State<Top> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Computer Programming Languages',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Keys()));
        },),),
      body: ListView(
        children: [
          Text('Essentials Of A Programming Language',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 18),),
          Divider(),
          Text('The below table enlists the top Computer Programming Languages and their applications in real life.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/c3.png',width: 300,height: 300,),
          Divider(),
           ElevatedButton.icon(
          onPressed:(){
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Low_level()));
        },
        label: Text('Continue',style: GoogleFonts.poppins(fontSize: 12,color: HexColor('#FD7E77'),fontWeight: FontWeight.w800),),
        icon:Icon(Icons.arrow_forward_sharp,
          color: HexColor('#FD7E77'),
          size: 12,),
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          primary: Colors.white,
        ),),
        ],
      ),
    );
  }
}
