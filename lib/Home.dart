import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Flutter_Course.dart';
import 'package:pdf/Mobiledev.dart';
import 'package:pdf/Webdev.dart';
import 'Courses.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  User? user=FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Hello  ",textAlign:TextAlign.start,style: GoogleFonts.poppins(letterSpacing: 1,fontSize: 15,color: Colors.black),),
            Text(user!.displayName!,style: GoogleFonts.poppins(letterSpacing: 1,fontSize: 11,color: Colors.black,fontWeight: FontWeight.bold)),
          ],
        ),
        actions:<Widget> [
          Padding(
            padding: const EdgeInsets.all(4),
            child: CircleAvatar(
              backgroundImage: NetworkImage(user!.photoURL!),
              backgroundColor: Colors.white,
              radius: 25,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(8)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Categories',style: GoogleFonts.raleway(fontSize: 20,fontWeight: FontWeight.w600,color: HexColor('#22264C')),),
              TextButton( onPressed: () {
                Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>Courses()));
              },
              child: Text('View All',style: GoogleFonts.raleway(fontSize: 18,fontWeight: FontWeight.normal,color: HexColor('#22264C')),)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/images/webdev.svg',width: 120,),
                        TextButton(onPressed: () {
                          Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>Webdev()));
                        },
                        child:Text('Web Development',style: GoogleFonts.raleway(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)),
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
                    TextButton(onPressed: () {
                      Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>Mobiledev()));
                    },
                    child:Text('Mobile Development',style: GoogleFonts.raleway(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black))),
                  ],
                ),
                shape: RoundedRectangleBorder(),
                color: Colors.white,
                elevation: 2,
                clipBehavior: Clip.antiAlias,
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(10)),
          Text('Recommended Courses ',textAlign:
            TextAlign.start,style: GoogleFonts.raleway(fontSize: 14,fontWeight: FontWeight.w600,color: HexColor('#515C6F')),),
          Divider(),
                     Card(
                        elevation: 2,
                        clipBehavior: Clip.antiAlias,
                        child:Column(
                         children:[
                          Image.asset('assets/images/flutterdev.png',width:200,height: 200,),
                           TextButton(onPressed: () {
                             Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>Flutter_Course()));
                           },
                           child:Text('The mobile Framework Flutter :Complete course for '
                        'Beginners',style: GoogleFonts.raleway(fontSize: 13,color: Colors.black,fontWeight: FontWeight.w600),)),
                          ],
                        ),
              ),


             ],
             ),
    );
  }

}
