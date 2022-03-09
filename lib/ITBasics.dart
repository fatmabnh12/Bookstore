import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Algo_Course.dart';
import 'package:pdf/Computer_Course.dart';
import 'package:pdf/Tools_Course.dart';
import 'Courses.dart';

class ItBasics extends StatefulWidget {

  @override
  _ItBasicsState createState() => _ItBasicsState();
}

class _ItBasicsState extends State<ItBasics> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('IT_Basics',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Courses())); },),
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(5)),
          SvgPicture.asset('assets/images/sft.svg',width: 200,height: 200,),
          Padding(padding: EdgeInsets.all(8)),
          Center(
            child: Text('Choose what to learn',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black54),),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 100,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Algo_Course()));
                  },
                  child: Card(
                    elevation: 2,
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/images/algo.svg',width: 50,height: 50,),
                        Text(' Algorithms and Data Structure ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.black),),],
                    ),
                  ),
                ),
              ),
              Divider(),
              Container(
                width: 130,
                height: 100,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Computer_course()));
                  },
                  child: Card(
                    elevation: 2,
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/images/computer.svg',width: 50,height: 50,),
                        Text(' Basics of Computer '
                            'Programming ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.black),),],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 130,
                height: 100,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Tools_Course()));
                  },
                  child: Card(
                    elevation: 2,
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/images/codecomp.svg',width: 50,height: 50,),
                        Text(' Tools for a '
                            'Programmer ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.black),),],
                    ),
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

