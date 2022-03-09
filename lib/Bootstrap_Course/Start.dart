import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Bootstrap_Course.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/Bootstrap_Course/Download.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getting Started',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Bootstrap_Course()));
        },),
      ),
      body: ListView(
        children: [
          Text('Why Bootstrap ?',
            textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          SvgPicture.asset('assets/images/responsive.svg',width: 100,height: 100,),
          Divider(),
          Text('Bootstrap is a surprisingly powerful and effective tool for developers building responsive websites and web applications.\n',
            textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('The main reason Bootstrap is so popular in the web design industry is its unique and compelling features that empower developers to build well-functioning, fully responsive websites without any hassle.\n'
            'It is so easy to learn and use that even a novice developer with basic knowledge of HTML, CSS, and JavaScript can get started with it in minutes.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Bootstrap Is the Ideal Choice for Responsive Web Design',
            textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Using a front-end framework essentially means that you don’t have to reinvent the wheel every time you develop a new theme or application. \n'
            'Packed with numerous state-of-the-art features, Bootstrap helps you accomplish much more than starting everything from the scratch. \n'
            'Since Bootstrap comes out of the box as responsive, you don`t have to put in the extra work toward making your design responsive, '
              'and this is what makes Bootstrap an ideal choice for developing responsive websites.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Download()));
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
