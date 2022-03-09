import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Flutter_Course.dart';
import 'package:pdf/Flutter_course/Dart_language.dart';

class Flutter_intro extends StatefulWidget {
  const Flutter_intro({Key? key}) : super(key: key);

  @override
  _Flutter_introState createState() => _Flutter_introState();
}

class _Flutter_introState extends State<Flutter_intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Introduction',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
       backgroundColor: Colors.white,
      leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
      Navigator.push(context,MaterialPageRoute(builder:(context)=>Flutter_Course()));
      },),
        ),
      body: ListView(
        children: [
          Text('What is Flutter ?',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Is an open source framework to create high quality, '
              'high performance mobile applications across mobile operating systems  Android and iOS. \n'
              'It provides a simple, powerful, efficient and easy to understand SDK to write mobile application in Google’s own language, Dart. ',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          SvgPicture.asset('assets/images/icon.svg',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Dart_language()));
            },
            label: Text('Continue',style: GoogleFonts.poppins(fontSize: 12,color: HexColor('#FD7E77'),fontWeight: FontWeight.w800),),
            icon:Icon(Icons.arrow_forward_sharp,
              color: HexColor('#FD7E77'),
              size: 12,),
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              primary: Colors.white,
            ),
          ),







        ],
      ),
    );
  }
}
