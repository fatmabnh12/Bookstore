import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Android_Course.dart';
import 'package:pdf/Java_Course.dart';
import 'package:pdf/XML_Course.dart';
import 'Courses.dart';
import 'Flutter_Course.dart';


class Mobiledev extends StatefulWidget {

  @override
  _MobiledevState createState() => _MobiledevState();
}

class _MobiledevState extends State<Mobiledev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile Development',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Courses())); },),
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(5)),
          SvgPicture.asset('assets/images/androidillus.svg',width: 200,height: 200,),
          Padding(padding: EdgeInsets.all(8)),
          Center(
            child: Text('Choose what to learn',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black54),),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Android_Course()));
                },
                child: Card(
                  elevation: 2,
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/images/androidlogo.svg',width: 80,height: 80,),
                      Text('Android',style:GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Flutter_Course()));
                },
                child: Card(
                  elevation: 2,
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/images/flutterlogo.svg',width: 60,height: 60,),
                      Text('Flutter',style:GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Java_Course()));
                },
                child: Card(
                  elevation: 2,
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/images/java.svg',width: 60,height: 60,),
                      Text('Java For Android',style:GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>XML_Course()));
                },
                child: Card(
                  elevation: 2,
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/images/xmllogo.svg',width: 70,height: 70,),
                      Text('XML For Android',style:GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),

    );
  }
}
