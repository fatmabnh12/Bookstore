import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Bootstrap_Course.dart';
import 'package:pdf/JS_Course.dart';
import 'package:pdf/Sql_Course.dart';
import 'CSS_Course.dart';
import 'Courses.dart';
import 'Html_Course.dart';
import 'Php_Course.dart';

class Webdev extends StatefulWidget {

  @override
  _WebdevState createState() => _WebdevState();
}

class _WebdevState extends State<Webdev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web Development',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Courses())); },),
      ),
      body: ListView(
        children: [
          SvgPicture.asset('assets/images/htmlcssillus.svg',width: 200,height: 200,),
          Padding(padding: EdgeInsets.all(8)),
          Center(
            child: Text('Choose what to learn',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black54),),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>Html_Course()));},
                child: Card(
                  elevation: 2,
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/images/htmllogo.svg',width: 80,height: 50,),
                      Text('HTML 5',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Css_Course()));},
                child: Card(
                  elevation: 2,
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/images/css3.svg',width: 50,height: 50,),
                      Text('CSS 3',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>JS_Course()));
                },
                child: Card(
                  elevation: 2,
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/images/jslogo.svg',width: 50,height: 50,),
                      Text('JavaScript',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
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
              // Boostrap
              InkWell(
                onTap: (){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>Bootstrap_Course()));},

                child: Card(
                  elevation: 2,
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/images/bootstrap.svg',width: 50,height: 50,),
                      Text('Bootstrap',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Sql_Course()));
                },
                child: Card(
                  elevation: 2,
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/images/mysql.svg',width: 50,height: 50,),
                      Text('SQL',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Php_Course()));
                },
                child: Card(
                  elevation: 2,
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/images/php.svg',width: 40,height: 40,),
                      Text('PHP',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
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