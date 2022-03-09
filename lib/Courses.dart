import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Html_Course.dart';
import 'Home.dart';
import 'ITBasics.dart';
import 'Mobiledev.dart';
import 'Webdev.dart';

class Courses extends StatefulWidget {

  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses',style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Home())); },),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(10),),
            Text('Categories',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,color: Colors.black54,fontWeight: FontWeight.w800),),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/images/webdev.svg',width: 120,),
                      TextButton(onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>Webdev()));
                      },
                          child:Text('Web Development',style: GoogleFonts.raleway(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black),)),
                    ],
                  ),
                  shape: RoundedRectangleBorder(),
                  color: Colors.white,
                  elevation: 2,
                  clipBehavior: Clip.antiAlias,
                ),
                Card(
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/images/mobiledev.svg',width: 120,),
                      TextButton(onPressed: () {  Navigator.push(context,MaterialPageRoute(builder:(context)=>Mobiledev()));
                      },
                          child:Text('Mobile Development',style: GoogleFonts.raleway(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black))),
                    ],
                  ),
                  shape: RoundedRectangleBorder(),
                  color: Colors.white,
                  elevation: 2,
                  clipBehavior: Clip.antiAlias,
                ),
              ],
            ),
            Divider(),
            Card(
              child: Column(
                children: [
                  SvgPicture.asset('assets/images/maintenance.svg',width: 120,),
                  TextButton(onPressed: () {  Navigator.push(context,MaterialPageRoute(builder:(context)=>ItBasics()));},
                      child:Text('IT_Basics',style: GoogleFonts.raleway(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black))),
                ],
              ),
              shape: RoundedRectangleBorder(),
              color: Colors.white,
              elevation: 2,
              clipBehavior: Clip.antiAlias,
            ),
          ],
        ),
      ),

    );
  }
}
