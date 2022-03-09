import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:pdf/Bootstrap_Course/Containers_course.dart';
import 'package:pdf/Bootstrap_Course/Nav_bar.dart';

class Columns extends StatefulWidget {
  const Columns({Key? key}) : super(key: key);

  @override
  _ColumnsState createState() => _ColumnsState();
}

class _ColumnsState extends State<Columns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Columns',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Containers_course()));
        },),
      ),
      body: ListView(
        children: [
          Text('Columns',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Columns build on the grid’s flexbox architecture. \n'
              'Flexbox means we have options for changing individual columns and modifying groups of columns at the row level. \n'
              'You choose how columns grow, shrink, or otherwise change.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Vertical Alignment',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/b7.png',width: 400,height: 400,),
          Divider(),
          Image.asset('assets/images/b10.png',width: 400,height: 400,),
          Divider(),
          Image.asset('assets/images/b8.png',width: 400,height: 400,),
          Divider(),
          Image.asset('assets/images/b11.png',width: 400,height: 400,),
          Divider(),
          Text('Horizontal Alignment',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/b12.png',width: 400,height: 400,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Nav_bar()));
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
