import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Android_Course.dart';
import 'package:pdf/Html_Course.dart';

import 'Flutter_Course.dart';
import 'Home.dart';

class Wishlist extends StatefulWidget {

  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
      title: Text('Wishlist',style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
    backgroundColor: Colors.white,
    leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
    Navigator.push(context,MaterialPageRoute(builder:(context)=>Home())); },),
    ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(5)),
          SizedBox(
            width: 100,
            height: 100,
            child:Card(
              elevation: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Android_Course()));
                  },
                  child:Text(' If you are familiar with Java And XML,\n'
                      ' Then this course is '
                      'highly recommended for you. \n'
                      ' Learn Android development from Scratch',
                    style: GoogleFonts.poppins(fontSize: 9,fontWeight: FontWeight.w600,color: Colors.black54)),),
                   SvgPicture.asset('assets/images/androidicon.svg',width: 100,height: 100,),
                ],
              ),
            ),
          ),
          Divider(color: Colors.black54,),
          SizedBox(
            width: 100,
            height: 100,
            child:Card(
              elevation: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Html_Course()));
                  },
                    child:
                    Text('This course will teach you\n'
                        ' how to design a web page using HTML,\n '
                        'You can use code editor below for more practise',
                        style: GoogleFonts.poppins(fontSize: 9,fontWeight: FontWeight.w600,color: Colors.black54)),),
                  SvgPicture.asset('assets/images/htmlicon.svg',width: 120,height: 100,),
                ],
              ),
            ),
          ),
          Divider(color: Colors.black54,),
          SizedBox(
            width: 100,
            height: 100,
            child:Card(
              elevation: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Flutter_Course()));
                  },
                    child:
                    Text('Use Flutter and take your mobile development skills \n'
                        'to build multiplatform applications',style: GoogleFonts.poppins(fontSize: 9,fontWeight: FontWeight.w600,color: Colors.black54)),),
                  SvgPicture.asset('assets/images/fluttericon.svg',width: 50,height: 50,),
                ],
              ),
            ),
          ),




         ]
      ),

    );
  }
}
