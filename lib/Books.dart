import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/FifthBook.dart';
import 'package:pdf/Firstbook.dart';
import 'package:pdf/Fourthbook.dart';

import 'Home.dart';
import 'Secondbook.dart';
import 'Thirbook.dart';

class Books extends StatefulWidget {

  @override
  _BooksState createState() => _BooksState();
}

class _BooksState extends State<Books> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Home())); },),
      title: Text('Books',style: GoogleFonts.poppins(fontSize: 30,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(10)),
            Container(
              width:300,
              height: 180,
              child:Card(
                elevation: 4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/HTML5.png',width: 120),
                    Padding(padding: EdgeInsets.all(8)),
                      Column(
                        children: [
                          Text('HTML5',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black),),
                          Padding(padding: EdgeInsets.all(15)),
                          Text('From StackOverflow',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.grey)),
                          Padding(padding: EdgeInsets.all(15)),
                          ElevatedButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Firstbook()));
                              },
                              style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                              child: Text('Read',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white))),
                        ],
                      ),

                  ],
                ),
              ),
            ),
            Divider(),
            Container(
              width:300,
              height: 180,
              child:Card(
                elevation: 4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/PHP.png',width: 120),
                    Padding(padding: EdgeInsets.all(8)),
                    Column(
                      children: [
                        Text('PHP',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black)),
                        Padding(padding: EdgeInsets.all(15)),
                        Text('From StackOverflow',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.grey)),
                        Padding(padding: EdgeInsets.all(15)),
                        ElevatedButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Secondbook()));

                            },
                            style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                            child: Text('Read',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            Container(
              width:300,
              height: 180,
              child:Card(
                elevation: 4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/js.png',width: 120),
                    Padding(padding: EdgeInsets.all(8)),
                    Column(
                      children: [
                        Text('JavaScript',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black)),
                        Padding(padding: EdgeInsets.all(15)),
                        Text('From StackOverflow',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.grey)),
                        Padding(padding: EdgeInsets.all(15)),
                        ElevatedButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Thirdbook()));

                            },
                            style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                            child: Text('Read',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white))),
                      ],
                    ),

                  ],
                ),
              ),
            ),
            Divider(),
            Container(
              width:300,
              height: 180,
              child:Card(
                elevation: 4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/Android.png',width: 120),
                    Padding(padding: EdgeInsets.all(8)),
                    Column(
                      children: [
                        Text('Android',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black)),
                        Padding(padding: EdgeInsets.all(15)),
                        Text('From StackOverflow',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.grey)),
                        Padding(padding: EdgeInsets.all(15)),
                        ElevatedButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>FourthBook()));

                            },
                            style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                            child: Text('Read',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            Container(
              width:300,
              height: 180,
              child:Card(
                elevation: 4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/flutter-succinctly.png',width: 130),
                    Padding(padding: EdgeInsets.all(8)),
                    Column(
                      children: [
                        Text('Flutter',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black)),
                        Padding(padding: EdgeInsets.all(15)),
                        Text('From Syncfusion',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.grey)),
                        Padding(padding: EdgeInsets.all(15)),
                        ElevatedButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>FifthBook()));

                            },
                            style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                            child: Text('Read',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white))),
                      ],
                    ),
                  ],
                ),
              ),
            ),




          ],
        ),


      ),
    );
  }
}


